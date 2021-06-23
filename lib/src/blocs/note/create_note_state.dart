import 'package:equatable/equatable.dart';
import 'package:project_management/src/models/note.dart';

import '../form_submission_status.dart';

abstract class CreateNoteState extends Equatable {
 const CreateNoteState();
@override
  List<Object> get props => [];
}
  
class CreateNoteLoadInProgress extends CreateNoteState {}

class CreateNoteLoadSuccess extends CreateNoteState {
  final Note note;

  const CreateNoteLoadSuccess(this.note );

  @override
  List<Object> get props => [note];

  @override
  String toString() => 'CreateNoteLoadSuccess { CreateNote: $note }';
}

class CreateNoteLoadFailure extends CreateNoteState {}
