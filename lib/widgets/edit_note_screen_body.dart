import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteScreenBody extends StatelessWidget {
  const EditNoteScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                CustomAppbar(
                  titleName: 'Edit Note',
                  icon: Icons.check,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hint: 'Title',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hint: 'Content',
                  maxLines: 8,
                )
              ],
            ),
          )),
    );
  }
}
