import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/src/blocs/form_submission_status.dart';
import 'package:project_management/src/blocs/note/create_note_bloc.dart';
import 'package:project_management/src/blocs/note/create_note_state.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';
import 'package:project_management/theme/theme.dart';

class CreateNotePage extends StatefulWidget {
  CreateNotePage({Key? key}) : super(key: key);

  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Note')),
      body: BlocProvider(
        create: (context) => CreateNoteBloc(),
        child: _noteForm(),
      ),
    );
  }

  Widget _noteForm() {
    var blocListener = BlocListener<CreateNoteBloc, CreateNoteState>(
        listener: (context, state) {
          //  final formStatus = state.formStatus;
          // if (formStatus is SubmissionFailed) {
          //   _showSnackBar(context, formStatus.exception.toString());
          // }
        },
        child: Form(
          // key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              noteWidget(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _subjectField(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _descriptionField(),
              ),
              _noteButton(),
            ],
          ),
        ));
    return blocListener;
  }

  Widget noteWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        decoration: containerBoxDecoration(),
      ),
    );
  }

  Widget _subjectField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return TextFormField(
        decoration: inputDecoration(Icons.subject, 'Subject'),
        validator: (value) =>
            state.isValidSubject ? null : 'subject is too short',
        onChanged: (value) => context.read<CreateNoteBloc>().add(
              NoteSubjectChanged(noteSubject: value),
            ),
      );
    });
  }

  Widget _descriptionField() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return TextFormField(
        obscureText: true,
        decoration: inputDecoration(Icons.description, 'Description'),
        validator: (value) =>
            state.isValidDescription ? null : 'description is too short',
        onChanged: (value) => context.read<CreateNoteBloc>().add(
              NoteDescriptionChanged(noteDescription: value),
            ),
      );
    });
  }

  Widget _noteButton() {
    return BlocBuilder<CreateNoteBloc, CreateNoteState>(
        builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : ElevatedButton(
              // style: elevatedButtonStyle(),
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
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ),
            );
    });
  }
}
