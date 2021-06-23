import 'package:equatable/equatable.dart';
import 'package:project_management/src/models/note.dart';

abstract class NoteEvent extends Equatable {
  const NoteEvent();
  @override
  List<Object> get props => [];
}

class NoteFetched extends NoteEvent {}

class NoteAdded extends NoteEvent {
  final Note note;
  const NoteAdded(this.note);

  @override
  List<Object> get props => [note];

  @override
  String toString() => 'NoteAdded { Note: $note }';
}

class NoteUpdated extends NoteEvent {
  final Note note;

  const NoteUpdated(this.note);

  @override
  List<Object> get props => [note];

  @override
  String toString() => 'NoteUpdated { updatedNote: $note }';
}

class NoteDeleted extends NoteEvent {
  final Note note;

  const NoteDeleted(this.note);

  @override
  List<Object> get props => [note];

  @override
  String toString() => 'NoteDeleted { Note: $note }';
}

class ClearCompleted extends NoteEvent {}

class ToggleAll extends NoteEvent {}

// class NoteSubmitted extends NoteEvent {
//   final Note? note;
//   NoteSubmitted({this.note});
// }
