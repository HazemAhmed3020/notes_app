import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_exmp/constants.dart';
import 'package:notes_app_exmp/models/note_model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffAC3931);
  void addAllNotes(NoteModel note) async {
    note.color = color.toARGB32();
    emit(AddNoteLoading());
    try{
      var noteBox = Hive.box(kNotesBox);
        await noteBox.add(note);
        emit(AddNoteSuccess());
      }
     catch (e) {
    emit(AddNoteFailed(errMassage: e.toString()));
    }

  }
}
