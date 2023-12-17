import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder({color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
          color:color?? Colors.white
      )
  );
}
