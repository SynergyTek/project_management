import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/note/notes_bloc.dart';

import 'note_list.dart';
class NotePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes'),),
      body: BlocProvider(create: (BuildContext context)=>
        NoteBloc(),
        child: NoteList(),
      ),
    );
  }
}