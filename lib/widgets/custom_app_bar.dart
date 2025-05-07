import 'package:flutter/material.dart';

import 'custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28,color: Colors.orange),
        ),
        const Spacer(),
        CustomSearch(
          icon: icon,
        ),
      ],
    );
  }
}
