import 'package:equatable/equatable.dart';

abstract class NoteEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class NoteFetched extends NoteEvent {}

class NoteSubjectChanged extends NoteEvent {
  final String noteSubject;

  NoteSubjectChanged({this.noteSubject=''});
}

class NoteDescriptionChanged extends NoteEvent {
  final String noteDescription;

  NoteDescriptionChanged({this.noteDescription=''});
}

class NoteSubmitted extends NoteEvent {}
