import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_exmp/constants.dart';
import 'package:notes_app_exmp/models/note_model.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  void fetchAllNotes(){
    try{
      var noteBox = Hive.box(kNotesBox);
      List<NoteModel> noteList = noteBox.values.toList().cast<NoteModel>();
      emit(NoteSuccess(noteList));
    } catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
