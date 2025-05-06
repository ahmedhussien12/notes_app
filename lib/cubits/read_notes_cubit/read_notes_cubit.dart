import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../model/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());
}
