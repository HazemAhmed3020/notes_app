 import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
 class EditeNoteView extends StatelessWidget {
   const EditeNoteView({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: EdgeInsets.all(18),
         child: Container(
           child: Column(
             children: [
               SizedBox(height: 35),
               CustomAppbar(icon: Icons.check, title: 'Edit Note',),
             ],
           ),
         ),

       ),
     );
   }
 }
