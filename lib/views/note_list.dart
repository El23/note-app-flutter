import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_note/models/note_for_listing.dart';

class NoteList extends StatelessWidget{
final notes = [
  new NoteForListing(
    noteID: '1',
    createDateTime: DateTime.now(),
    latestEditDateTime: DateTime.now(),
    noteTitle: ' Note №1 '
  ),
  new NoteForListing(
    noteID: '2',
    createDateTime: DateTime.now(),
    latestEditDateTime: DateTime.now(),
    noteTitle: 'Note №2'
  ),
  new NoteForListing(
    noteID: '3',
    createDateTime: DateTime.now(),
    latestEditDateTime: DateTime.now(),
    noteTitle: 'Note №3'
  )

];

String formatDateTime(DateTime dateTime){
  return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Notes'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),body: ListView.separated(
      separatorBuilder: (_,__) => Divider(height: 1, color: Colors.black38,),
      itemBuilder: (_, index){
        return ListTile(
          title: Text(
            notes[index].noteTitle,
            style:  TextStyle(color: Theme.of(context).primaryColor),
          ),
          subtitle: Text('last adited on ${formatDateTime(notes[index].latestEditDateTime)}'),
        );
      },itemCount: notes.length,
    ),
    );
  }
}