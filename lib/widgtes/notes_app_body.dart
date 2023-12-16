import 'package:flutter/material.dart';
import 'package:note_app/widgtes/custom_app_bar.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppbar(),
        ],
      ),
    );
  }
}
