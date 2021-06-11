

class Note {//extends Equatable {
   Note(
      { this.id,
       this.noteSubject,
       this.noteDescription});

   String? id;
   String? noteSubject;
   String? noteDescription;

  // @override
  // List<Object> get props => [id, noteSubject, noteDescription];

  // Note();
  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
  Map<String, dynamic> toJson() => _$NoteToJson(this);
}

Note _$NoteFromJson(Map<String, dynamic> json) {
  return Note()
    ..id = json["Id"]
    ..noteSubject = json["NoteSubject"]
    ..noteDescription = json["NoteDescription"];
}

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      "Id": instance.id,
      "NoteSubject": instance.noteSubject,
      "NoteDescription": instance.noteDescription,
    };
    