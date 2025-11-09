import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_exmp/constants.dart';
import 'package:notes_app_exmp/models/note_model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  final noteBox = Hive.box(kNotesBox);
  void addAllNotes() async {
    try{
      if(state is AddNoteLoading){
        emit(AddNoteLoading());
      }
      else if(state is AddNoteSuccess){
        List noteList =  noteBox.values.toList();
        emit(AddNoteSuccess(noteList));
      }
    } catch (e) {
    emit(AddNoteFailed(errMassage: e.toString()));
    }

  }
}
