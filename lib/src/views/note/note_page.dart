import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:project_management/src/blocs/note/notes_bloc.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';

import 'note_list.dart';
class NotePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes'),),
      body: BlocProvider(create: (BuildContext context)=>
        NoteBloc(httpClient: http.Client())..add(NoteFetched()),
        child: NoteList(),
      ),
    );
  }
}