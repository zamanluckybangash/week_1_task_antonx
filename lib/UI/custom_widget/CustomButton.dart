import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

class CustomButton extends StatelessWidget {

  final buttonName;
  Color textColor;
  Color buttonColor;
  final onPressed;
  CustomButton({required this.buttonName , required this.textColor, required this.buttonColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:  FittedBox(
        fit: BoxFit.fitWidth,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all((buttonColor)),
              minimumSize: MaterialStateProperty.all(Size(300,50)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              ))
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return onPressed;
            }));
          },
          child:  Text(buttonName,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}
