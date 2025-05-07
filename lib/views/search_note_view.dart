import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/read_notes_cubit/read_notes_cubit.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/search_results_list.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Notes')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomTextFormField(
              onChanged: (value) {
                BlocProvider.of<ReadNotesCubit>(context).searchNotes(value);
              },
              hint: 'search by title or content',
              prefixIcon: Icons.search,
            ),
          ),
          const Expanded(child: SearchResultsList()),
        ],
      ),
    );
  }
}
