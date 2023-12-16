import 'package:flutter/material.dart';
import 'package:note_app/widgtes/notes_app_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NotesAppBody(),
      ),
    );
  }
}
