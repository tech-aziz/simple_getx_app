import 'package:flutter/material.dart';
import 'note_details.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Keeper'),
        centerTitle: true,
      ),
      body: getNoteListView(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToDetail('Add Note');
          debugPrint('Fab clicked');
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text(
              'Dummy Title',
              style: textStyle,
            ),
            subtitle: const Text('Dummy Date'),
            trailing: const Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint('Debug...');
              navigateToDetail('Edit Note');
            },
          ),
        );
      },
    );
  }

  void navigateToDetail(String title) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NoteDetails(
              appBarTitle: title,
            )));
  }

  
}
