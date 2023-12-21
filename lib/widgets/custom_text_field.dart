import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1, this.onSaved, this.onChanged});

  final String hint;
  final int maxLines;
  final  Function(String)? onChanged;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value)
      {
        if(value?.isEmpty ?? true)
        {
          return 'Field is Required';
        } else
        {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        hintText: hint,
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
