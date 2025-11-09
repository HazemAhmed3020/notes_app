import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_exmp/constants.dart';
import 'package:notes_app_exmp/models/note_model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addAllNotes(NoteModel note) async {
    emit(AddNoteLoading());
    try{
      var noteBox = Hive.box(kNotesBox);
        await noteBox.add(note);
        emit(AddNoteSuccess(noteBox.values.toList()));
      }
     catch (e) {
    emit(AddNoteFailed(errMassage: e.toString()));
    }

  }
}
