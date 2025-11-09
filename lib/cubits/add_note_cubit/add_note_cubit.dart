import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_exmp/constants.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void fetchAllStates() async {
    final noteBox = await Hive.openBox(kNotesBox);
    if(state is AddNoteLoading){
      emit(AddNoteLoading());
    }
    else if(state is AddNoteSuccess){
      emit(AddNoteSuccess());
    }
    else {
      emit(AddNoteFailed(errMassage: 'Error , try again'));
    }
  }
}
