import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../constants/constants.dart';
import '../../model/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    try {
      List<NoteModel> notes = notesBox.values.toList(); // List<NoteModel>
      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
