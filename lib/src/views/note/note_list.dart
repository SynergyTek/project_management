import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/note/notes_bloc.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';
import 'package:project_management/src/blocs/note/notes_state.dart';
import 'package:project_management/src/widgets/bottom_loader.dart';
import 'package:project_management/src/widgets/note/note_list_item.dart';

class NoteList extends StatefulWidget {

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final _scrollController= ScrollController();
  late NoteBloc _noteBloc;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(_onScroll);
    _noteBloc=context.read<NoteBloc>();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc,NoteState>(
      builder: (context,state){
        switch (state.status) {
           case NoteStatus.failure:
            return const Center(child: Text('failed to fetch posts'));
          case NoteStatus.success:
            if (state.notes.isEmpty) {
              return const Center(child: Text('no posts'));
            }
           return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.notes.length
                    ? BottomLoader()
                    : NoteListItem(post: state.notes[index]);
              },
              itemCount: state.hasReachedMax
                  ? state.notes.length
                  : state.notes.length + 1,
              controller: _scrollController,
            );
            default:
            return const Center(child: CircularProgressIndicator());
        }
      },
      
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) _noteBloc.add(NoteFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}