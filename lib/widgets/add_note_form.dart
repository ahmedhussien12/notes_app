import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/model/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child:  Column(
        children: [
          CustomTextFormField(
            hint: 'title',
            onSaved: (value){
              title = value!;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: 'content',
            maxLines: 5,
            onSaved: (value){
              subtitle = value!;
            },
          ),
          const  SizedBox(height: 32),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                var noteModel = NoteModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.green.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
