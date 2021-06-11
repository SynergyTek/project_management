import 'package:flutter/material.dart';
import 'package:project_management/src/models/note.dart';

class NoteListItem extends StatelessWidget {
  const NoteListItem({Key? key, required this.post}) : super(key: key);

  final Note post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Text('${post.id}', style: textTheme.caption),
      title: Text(post.noteSubject??''),
      isThreeLine: true,
      subtitle: Text(post.noteDescription??''),
      dense: true,
    );
  }
}