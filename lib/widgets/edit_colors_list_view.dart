import 'package:flutter/cupertino.dart';
import 'package:note_app/model/note_model.dart';

import '../constants/constants.dart';
import 'colors_list_view.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                  onTap: () {
                    selectedIndex = index;

                    widget.note.color = kColors[index].value;
                    setState(() {});
                  },
                  child: ColorItem(
                    isSelected: selectedIndex == index,
                    color: kColors[index],
                  )),
            );
          },
          itemCount: kColors.length,
        ),
      ),
    );
  }
}
