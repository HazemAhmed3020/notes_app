import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exmp/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app_exmp/models/note_model.dart';
import 'package:notes_app_exmp/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app_exmp/widgets/custom_appbar.dart';

import '../widgets/notes_list_view.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notesToShow = [];
        if(state is NoteSuccess){
            notesToShow = state.noteList;
        }
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                SizedBox(height: 35),
                CustomAppbar(icon: Icons.search, title: 'Notes',),
                Expanded(child: NotesListView(noteModel: notesToShow),),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide.none,
            ),
            elevation: 10,
            backgroundColor: Color(0xFF54EED8),
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            child: Icon(Icons.add, color: Colors.black,),
          ),
        );
      },
    );
  }
}


