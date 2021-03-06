import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/note/notes_bloc.dart';

import 'create_note.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return CreateNotePage(
                            // key: ArchSampleKeys.editTodoScreen,
                            // onSave: (task, note) {
                            //   BlocProvider.of<CreateNoteBloc>(context).add(
                            //     NoteAdded(
                            //       note.copyWith(task: task, note: note),
                            //     ),
                            //   );
                            // },
                            isEditing: false,
                          );
                        },
                      ),
                    );
          // Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => CreateNotePage(
                               
          //                     )));
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}