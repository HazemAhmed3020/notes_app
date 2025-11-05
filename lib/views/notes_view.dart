import 'package:flutter/material.dart';
import 'package:notes_app_exmp/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app_exmp/widgets/custom_appbar.dart';

import '../widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomAppbar(),
            Expanded(child: NotesListView(),),
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
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context) {
              return AddNoteBottomSheet();
            });
          },
          child: Icon(Icons.add , color: Colors.black,),
      ),
    );
  }
}


