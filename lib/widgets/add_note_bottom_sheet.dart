import 'package:flutter/material.dart';
import 'package:notes_app_exmp/widgets/custom_bottom.dart';
import 'package:notes_app_exmp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomTextField(hintTxt: 'Title'),
          SizedBox(height: 15,),
          CustomTextField(hintTxt: 'Content', maxLines: 5,),
          SizedBox(height: 100,),
          CustomButton(txt: 'Add', onTap: (){}),
        ],
      ),
    );
  }
}
