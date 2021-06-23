import 'package:project_management/src/models/note.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class NoteRepository {
  /// Loads Note first from File storage. If they don't exist or encounter an
  /// error, it attempts to load the Note from a Web Client.
  Future<List<Note>> loadNote();

  // Persists Note to local disk and the web
  Future saveNote(Note notes);
}

class NoteRepositoryImpl implements NoteRepository {
  const NoteRepositoryImpl();
  @override
  Future<List<Note>> loadNote([int startIndex = 0]) async {
    Uri url = Uri.parse(
        'https://webapidev.aitalkx.com/cms/NtsNote/ReadNoteDashBoardGridData?templateCode=MobileTestingNote');
    final response = await http.Client().get(url);
    // final response = await httpClient.get(
    //   Uri.https(
    //     'jsonplaceholder.typicode.com',
    //     '/posts',
    //     <String, String>{'_start': '$startIndex', '_limit': '$noteLimit'},
    //   ),
    // );
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      //  Map<String, dynamic> map = json.decode(response.body);
      // var map1 = body[''];
      List<Note> _workSpaceList = body.map<Note>((obj) {
        var kjn = Note.fromJson(obj);
        // var kjn = Note(
        //     id: '0',//json['Id'] as String,
        //     noteSubject: 'a',//json['NoteSubject'] as String,
        //     noteDescription:'b',// json['NoteDescription'] as String,
        //   );
        return kjn;
      }).toList();
      return _workSpaceList;
      // return body.map((dynamic json) {
      //   return Note(
      //     id: json['Id'] as String,
      //     noteSubject: json['NoteSubject'] as String,
      //     noteDescription: json['NoteDescription'] as String,
      //   );
      // }).toList();
    }
    throw Exception('error fetching posts');
  }

  @override
  Future saveNote(Note note) {
    // print('attempting login');
    // await Future.delayed(Duration(seconds: 3));
    // print('logged in');
    // throw Exception('failed log in');
    Uri url =
        Uri.parse('https://webapidev.aitalkx.com/cms/NtsNote/ManageNtsNote');
    var response = http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(note),
    );

    return response;
  }
}
