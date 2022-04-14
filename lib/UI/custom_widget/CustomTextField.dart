import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

class CustomTextField extends StatelessWidget {

  final String textName;
  final bool isPassword;
  final String hintsText;
  final textColor;

  const CustomTextField({required this.textName , required this.isPassword, required this.hintsText,
  required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: hintsText,
          hintStyle:  TextStyle(
              color: textColor,
              fontWeight: FontWeight.w900
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),

          )
      ),
    );
  }
}
