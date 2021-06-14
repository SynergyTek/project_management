import 'package:bloc/bloc.dart';
import 'package:project_management/src/blocs/note/create_note_state.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';
import 'package:project_management/src/repository/note_repository.dart';

import '../form_submission_status.dart';

class CreateNoteBloc extends Bloc<NoteEvent, CreateNoteState> {
  // final NoteRepository noteRepo;

  CreateNoteBloc() : super(CreateNoteState());

  @override
  Stream<CreateNoteState> mapEventToState(NoteEvent event) async* {
// subject updated
    if (event is NoteSubjectChanged) {
      yield state.copyWith(noteSubject: event.noteSubject);

// description updated
    } else if (event is NoteDescriptionChanged) {
      yield state.copyWith(noteDescription: event.noteDescription);

// Form submitted
    } else if (event is NoteSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());

      // try {
      //   var response = await noteRepo.createNote(state.noteSubject, state.noteDescription);
      //   if (response.statusCode == 200) {
      //     yield state.copyWith(formStatus: SubmissionSuccess(response.body));
      //   }
      // } catch (e) {
      //   yield state.copyWith(formStatus: SubmissionFailed());//(e));
      // }
    }
  }
}
