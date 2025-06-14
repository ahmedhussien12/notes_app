import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/model/note_model.dart';

import '../../constants/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffff9800);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    try {
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
// T add<T>(T name){
//   return name;
// generic type
// }
