import 'package:bloc/bloc.dart';
import 'package:project_management/src/blocs/note/create_note_state.dart';
import 'package:project_management/src/blocs/note/notes_event.dart';
import 'package:project_management/src/models/note.dart';
import 'package:project_management/src/repository/note_repository.dart';


class CreateNoteBloc extends Bloc<NoteEvent, CreateNoteState> {
  
  final NoteRepository noteRepository;

  CreateNoteBloc({required this.noteRepository})
      : super(CreateNoteLoadSuccess(new Note()));

  @override
  Stream<CreateNoteState> mapEventToState(NoteEvent event) async* {
    // if (event is NoteLoaded) {
    //   yield* _mapNoteLoadedToState();
    // } else
    if (event is NoteAdded) {
      yield* _mapNoteAddedToState(event);
    
    } else if (event is NoteUpdated) {
      yield* _mapNoteUpdatedToState(event);
    } else if (event is NoteDeleted) {
      yield* _mapNoteDeletedToState(event);
    }
    
  }

  //  Stream<CreateNoteState> _mapNoteLoadedToState() async* {
  //   try {
  //     final Note = await this.noteRepository.loadNote();
  //     yield CreateNoteLoadSuccess(
  //       Note.map(Note.fromEntity).toList(),
  //     );
  //   } catch (_) {
  //     yield NoteLoadFailure();
  //   }
  // }

  Stream<CreateNoteState> _mapNoteAddedToState(NoteAdded event) async* {
    if (state is CreateNoteLoadSuccess) {
       final updatedNote = (state as CreateNoteLoadSuccess).note;
      yield CreateNoteLoadSuccess(updatedNote);
      _saveNote(updatedNote);
    }
  }

  Stream<CreateNoteState> _mapNoteUpdatedToState(NoteUpdated event) async* {
    if (state is CreateNoteLoadSuccess) {
       final updatedNote = (state as CreateNoteLoadSuccess).note;
      yield CreateNoteLoadSuccess(updatedNote);
      _saveNote(updatedNote);
    }
  }

  Stream<CreateNoteState> _mapNoteDeletedToState(NoteDeleted event) async* {
    if (state is CreateNoteLoadSuccess) {
      final updatedNote = (state as CreateNoteLoadSuccess).note;
      yield CreateNoteLoadSuccess(updatedNote);
      _saveNote(updatedNote);
    }
  }

  // Stream<CreateNoteState> _mapToggleAllToState() async* {
  //   if (state is CreateNoteLoadSuccess) {
  //     final allComplete =
  //         (state as CreateNoteLoadSuccess).note.every((note) => note.complete);
  //     final List<Note> updatedNote = (state as CreateNoteLoadSuccess)
  //         .note
  //         .map((note) => note.copyWith(complete: !allComplete))
  //         .toList();
  //     yield CreateNoteLoadSuccess(updatedNote);
  //     _saveNote(updatedNote);
  //   }
  // }

  // Stream<CreateNoteState> _mapClearCompletedToState() async* {
  //   if (state is CreateNoteLoadSuccess) {
  //     final List<Note> updatedNote = (state as CreateNoteLoadSuccess)
  //         .note
  //         .where((note) => !Note.complete)
  //         .toList();
  //     yield CreateNoteLoadSuccess(updatedNote);
  //     _saveNote(updatedNote);
  //   }
  // }

  Future _saveNote(Note note) {
    return noteRepository.saveNote(note);
  }
}
