import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/item_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 24),
              ItemNote(),
            ],
          ),
        ),
      ),
    );
  }
}
