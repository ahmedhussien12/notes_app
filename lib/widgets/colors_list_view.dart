import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
            ))
        : CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedIndex = 0;
  List<Color> colors = const [
    Color(0xff309898),
    Color(0xffffd752),
    Color(0xff983040),
    Color(0xff5a9830),
    Color(0xff986225),
  ];
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
              child: GestureDetector(onTap: (){
                selectedIndex = index;
                setState(() {

                });
              },child: ColorItem(isSelected: selectedIndex == index, color: colors[index],)),
            );
          },
          itemCount: colors.length,
        ),
      ),
    );
  }
}
