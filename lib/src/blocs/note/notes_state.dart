import 'package:equatable/equatable.dart';
import 'package:project_management/src/models/note.dart';

enum NoteStatus{initial,success,failure}

class NoteState extends Equatable{
  const NoteState({
    this.status=NoteStatus.initial,
    this.notes=const <Note>[],
    this.hasReachedMax=false,
  });

  final NoteStatus status;
  final List<Note> notes;
  final bool hasReachedMax;


  NoteState copyWith({NoteStatus? status,List<Note>? notes,bool? hasReachedMax})
  {
    return NoteState(
      status: status??this.status,
      notes: notes??this.notes,
      hasReachedMax: hasReachedMax??this.hasReachedMax
    );
  }


@override
String toString(){
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, notes: ${notes.length} }''';
  
}

  @override
  // TODO: implement props
  List<Object?> get props => [status,notes,hasReachedMax];
}