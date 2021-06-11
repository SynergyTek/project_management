import 'package:equatable/equatable.dart';

abstract class NoteEvent extends Equatable{
  @override
  List<Object> get props=>[];

}

class NoteFetched extends NoteEvent{}