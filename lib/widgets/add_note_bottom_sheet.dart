import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_exmp/widgets/custom_bottom.dart';
import 'package:notes_app_exmp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title; String? content;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
              children: [
                SizedBox(height: 20,),
                CustomTextField(hintTxt: 'Title' , onSaved: (data){
                    title = data;
                },),
                SizedBox(height: 15,),
                CustomTextField(hintTxt: 'Content', maxLines: 5, onSaved: (data){
                  content = data;
                },
                ),
                SizedBox(height: 100,),
                CustomButton(txt: 'Add',
                    onTap: () async {
                      if(formKey.currentState!.validate()){
                          isLoading = true;
                          setState(() {});
                      }
                    }

                ),
              ],
            ),
        ],
          ),
        ),
      ),
    );
  }
}
