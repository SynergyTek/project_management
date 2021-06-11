import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:project_management/src/models/note.dart';
import 'dart:async';
import 'dart:convert';
import 'package:rxdart/rxdart.dart';

import 'notes_event.dart';
import 'notes_state.dart';
const noteLimit = 20;

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc({required this.httpClient}) : super(const NoteState());

  final http.Client httpClient;

  @override
  Stream<Transition<NoteEvent, NoteState>> transformEvents(
      Stream<NoteEvent> event,
      TransitionFunction<NoteEvent, NoteState> transitionFn) {
    return super.transformEvents(
        event.debounceTime(const Duration(milliseconds: 500)), transitionFn);
  }

  @override
  Stream<NoteState> mapEventToState(NoteEvent event) async* {
    if (event is NoteFetched) {
      yield await _mapNoteFetchedToState(state);
    }
  }

  Future<NoteState> _mapNoteFetchedToState(NoteState state) async {
    if (state.hasReachedMax) {
      return state;
    }
    try {
      if (state.status == NoteStatus.initial) {
        final notes = await _fetchNotes();
        return state.copyWith(
            status: NoteStatus.success, notes: notes, hasReachedMax: false);
      }
      final notes = await _fetchNotes(state.notes.length);
      return notes.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: NoteStatus.success, notes: notes, hasReachedMax: false);
    } on Exception {
      return state.copyWith(status: NoteStatus.failure);
    }
  }

  Future<List<Note>> _fetchNotes([int startIndex = 0]) async {
    Uri url = Uri.parse(
        'https://webapidev.aitalkx.com/cms/NtsNote/ReadNoteDashBoardGridData?templateCode=MobileTestingNote');
    final response = await httpClient.get(url);
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
}
