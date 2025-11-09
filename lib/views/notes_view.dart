import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_exmp/constants.dart';
import 'package:notes_app_exmp/cubits/note_cubit/note_cubit.dart';
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
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: BlocBuilder<NoteCubit, NoteState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  SizedBox(height: 35),
                  CustomAppbar(icon: Icons.search, title: 'Notes',),
                  Expanded(child: NotesListView(noteModel: ),),
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
      ),
    );
  }
}


