import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes_cubit/read_notes_cubit.dart';

import '../model/note_model.dart';
import 'item_note.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount:  notes.length,
            itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ItemNote(
                note: notes[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
