import 'package:flutter/material.dart';

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
