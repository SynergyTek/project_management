import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/form_submission_status.dart';
import 'package:project_management/src/blocs/note/create_note_bloc.dart';
import 'package:project_management/src/blocs/note/create_note_state.dart';
import 'package:project_management/src/blocs/note/notes_bloc.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';

class CreateNotePage extends StatelessWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NoteBloc(),
        child: _NoteForm(),
      ),
    );
  }

    Widget _NoteForm() {
    var blocListener = BlocListener<CreateNoteBloc, CreateNoteState>(
        listener: (context, state) {
          final formStatus = state.formStatus;
          // if (formStatus is SubmissionFailed) {
          //   _showSnackBar(context, formStatus.exception.toString());
          // }
        },
        child: Form(
          // key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _usernameField(),
                _passwordField(),
                _NoteButton(),
              ],
            ),
          ),
        ));
    return blocListener;
  }

  Widget _usernameField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(builder: (context, state) {
      return TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Username',
        ),
        validator: (value) =>
            state.isValidSubject ? null : 'Username is too short',
        onChanged: (value) => context.read<CreateNoteBloc>().add(
              NoteSubjectChanged(noteSubject: value),
            ),
      );
    });
  }

  Widget _passwordField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(builder: (context, state) {
      return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: 'Password',
        ),
        validator: (value) =>
            state.isValidDescription ? null : 'Password is too short',
        onChanged: (value) => context.read<CreateNoteBloc>().add(
              NoteDescriptionChanged(noteDescription: value),
            ),
      );
    });
  }

  Widget _NoteButton() {
    return BlocBuilder<CreateNoteBloc
    , CreateNoteState>(builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                // if (_formKey.currentState.validate()) {
                //   context.read<NoteBloc>().add(NoteSubmitted());
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
