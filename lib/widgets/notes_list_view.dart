import 'package:flutter/material.dart';
import 'package:notes_app_exmp/models/note_model.dart';

import 'note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.noteModel});
  final List<NoteModel>  noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        itemCount: noteModel.length,
        itemBuilder: (context, index) {
          return NoteItem(noteModel: noteModel[index],);
        },
      ),
    );
  }
}
