import 'package:flutter/material.dart';
import 'package:notes_app_exmp/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(18),
          child: Column(
            children: [
              SizedBox(height: 35,),
              CustomAppbar(),
            ],
          ),
        ),
    );
  }
}
