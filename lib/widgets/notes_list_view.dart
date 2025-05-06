import 'package:flutter/material.dart';

import 'item_note.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        // itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: ItemNote(),
        ),
      ),
    );
  }
}
