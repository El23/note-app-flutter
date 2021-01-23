import 'package:flutter/material.dart';
import 'package:flutter_app_note/services/service_note.dart';
import 'package:flutter_app_note/views/note_list.dart';
import 'package:get_it/get_it.dart';

void setupLocator(){
  GetIt.I.registerLazySingleton(() => NotesService());

}
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Note Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: NoteList(),
    );
  }
}
