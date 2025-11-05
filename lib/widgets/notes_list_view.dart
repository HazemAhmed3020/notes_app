import 'package:flutter/material.dart';

import 'note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NoteItem();
        },
      ),
    );
  }
}
