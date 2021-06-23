import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/form_submission_status.dart';
import 'package:project_management/src/blocs/note/create_note_bloc.dart';
import 'package:project_management/src/blocs/note/create_note_state.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';
import 'package:project_management/src/models/note.dart';
import 'package:project_management/src/repository/note_repository.dart';

typedef OnSaveCallback = Function(String task, String note);

class CreateNotePage extends StatefulWidget {
  final bool isEditing;
  // final OnSaveCallback onSave;
  // final Note note;

  CreateNotePage({
    Key? key,
    // required this.onSave,
    required this.isEditing,
    // required this.note
  }) : super(key: key);

  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // late String _task;
  // late String _note;
  bool get isEditing => widget.isEditing;
  Note _note = new Note();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Note')),
      body: BlocProvider(
        create: (context) =>
            CreateNoteBloc(noteRepository: const NoteRepositoryImpl()),
        child: _noteForm(),
      ),
    );
  }

  Widget _noteForm() {
    var blocListener = BlocListener<CreateNoteBloc, CreateNoteState>(
        listener: (context, state) {
          // final formStatus = state.formStatus;
          // if (formStatus is SubmissionFailed) {
          //   _showSnackBar(context, formStatus.exception.toString());
          // }
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _subjectField(),
                _descriptionField(),
                _noteButton(),
              ],
            ),
          ),
        ));
    return blocListener;
  }

  Widget _subjectField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'subject',
        ),
        // validator: (value) =>
        //     state.isValidSubject ? null : 'subject is too short',
        // onChanged: (value) => context.read<CreateNoteBloc>().add(
        //       NoteSubjectChanged(noteSubject: value),
        // ),
        onSaved: (value) => _note.noteSubject = value,
      );
    });
  }

  Widget _descriptionField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: 'description',
        ),
        // validator: (value) =>
        //     state.isValidDescription ? null : 'description is too short',
        onChanged: (value) {
          _note.noteDescription = value;
        },
        // onSaved: (value) {
        //   _note.noteDescription = value;
        // },
      );
    });
  }

  Widget _noteButton() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return ElevatedButton(
        onPressed: () {
          // if (_formKey.currentState.validate()) {
          context.read<CreateNoteBloc>().add(NoteAdded(_note));
          // }
          // if (state.formStatus is SubmissionSuccess) {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => HomeScreen(
          //                 title: "homepage",
          //               )));
          //   // _showSnackBar(context, formStatus.token);
          // }
        },
        child: Text('Note'),
      );
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
