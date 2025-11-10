import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exmp/models/note_model.dart';
import 'package:notes_app_exmp/widgets/custom_text_field.dart';

import '../cubits/note_cubit/note_cubit.dart';
import '../widgets/custom_appbar.dart';

class EditeNoteView extends StatefulWidget {
  const EditeNoteView({super.key});

  @override
  State<EditeNoteView> createState() => _EditeNoteViewState();
}

class _EditeNoteViewState extends State<EditeNoteView> {
  String? title;
  String? content;
  NoteModel? noteModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomAppbar(
              icon: Icons.check,
              title: 'Edit Note',
              onTap: () {
                noteModel!.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              hintTxt: 'Title',
              onChanged: (data) {
                if (data.isEmpty) {
                  title = noteModel!.title;
                } else {
                  title = data;
                }
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              hintTxt: 'content',
              maxLines: 7,
              onChanged: (data) {
                if (data.isEmpty) {
                  content = noteModel!.subTitle;
                } else {
                  content = data;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
