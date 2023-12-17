import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_app_body.dart';

import '../widgets/add_note_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesAppBody(),
      ),
    );
  }
}

