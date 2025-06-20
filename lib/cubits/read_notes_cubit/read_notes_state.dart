part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesState {}

final class ReadNotesInitial extends ReadNotesState {}

final class ReadNotesSuccess extends ReadNotesState {
  final List<NoteModel> notes;

  ReadNotesSuccess([this.notes = const []]);
}
