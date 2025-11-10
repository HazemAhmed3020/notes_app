 import 'package:flutter/material.dart';
import 'package:notes_app_exmp/widgets/custom_text_field.dart';

import '../widgets/custom_appbar.dart';
 class EditeNoteView extends StatefulWidget {
   const EditeNoteView({super.key});

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
             CustomAppbar(icon: Icons.check, title: 'Edit Note',),
             SizedBox(height: 30,),
             CustomTextField(hintTxt: 'Title' , onChanged: (data){
               title = data;
             },
             ),
             SizedBox(height: 30,),
             CustomTextField(hintTxt: 'content', maxLines: 7,
             onChanged: (data){
               content = data;
             },
             ),
           ],
         ),

       ),
     );
   }
}
