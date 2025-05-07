import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes_cubit/read_notes_cubit.dart';

import '../widgets/add_new_note.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // hena bs m3loma hal hyfr2 lw 3mlt create hena aw
      // aw 3la el material app f el 7ala d msh hyfr2
      // 3shan el el notes view m3aia w sh8ala tol ma ana fat7
      // el app w msh htmoot l2nha hya el app asln
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNewNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add, color: Colors.black),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
