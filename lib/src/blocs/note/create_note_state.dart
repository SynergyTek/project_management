import '../form_submission_status.dart';

class CreateNoteState {
  final String noteSubject;
  bool get isValidSubject => noteSubject.length >= 1;

  final String noteDescription;
  bool get isValidDescription => noteDescription.length >= 1;

  final FormSubmissionStatus? formStatus;

  CreateNoteState({
    this.noteSubject = '',
    this.noteDescription = '',
    this.formStatus = const InitialFormStatus(),
  });

  CreateNoteState copyWith({
    String noteSubject = '',
    String noteDescription = '',
    FormSubmissionStatus? formStatus,
  }) {
    return CreateNoteState(
      noteSubject: noteSubject, //?? this.noteSubject,
      noteDescription: noteDescription, //?? this.noteDescription,
      formStatus: formStatus, // ?? this.formStatus,
    );
  }
}
