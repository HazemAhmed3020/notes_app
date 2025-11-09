part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}
final class NoteSuccess extends NoteState {
  final List<NoteModel> noteList;

  NoteSuccess(this.noteList);
}
