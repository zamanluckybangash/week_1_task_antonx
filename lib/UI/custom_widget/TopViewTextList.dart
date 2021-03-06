import 'package:flutter/material.dart';

class TopViewText extends StatelessWidget {

  final String text;
  final  onpressed;
  final textColor;

  const TopViewText({required this.text,this.onpressed,this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child:  Text(text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w600),
        ),
        onTap: onpressed,
      ),
    );
  }
}