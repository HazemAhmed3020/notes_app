import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exmp/models/note_model.dart';
import 'package:notes_app_exmp/widgets/custom_text_field.dart';

import '../cubits/note_cubit/note_cubit.dart';
import '../widgets/custom_appbar.dart';

class EditeNoteView extends StatefulWidget {
  const EditeNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditeNoteView> createState() => _EditeNoteViewState();
}

class _EditeNoteViewState extends State<EditeNoteView> {
  String? title;
  String? content;

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
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              hintTxt: 'Title',
              onChanged: (data) {
                  title = data;
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              hintTxt: 'content',
              maxLines: 7,
              onChanged: (data) {
                  content = data;
              },
            ),
          ],
        ),
      ),
    );
  }
}
