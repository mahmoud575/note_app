import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.titleName, required this.icon});
  final String titleName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
           CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
