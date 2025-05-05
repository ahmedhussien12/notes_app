import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 24),
            CustomTextFormField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextFormField(hint: 'content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
