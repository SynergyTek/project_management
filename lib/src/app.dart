import 'package:flutter/material.dart';

import 'views/note/note_page.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: NotePage(),
      ),
    );
  }
}
