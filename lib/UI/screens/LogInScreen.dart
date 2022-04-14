import 'package:flutter/material.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomButton.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomCard.dart';
import 'package:week_1_task_antonx/UI/custom_widget/CustomTextField.dart';
import 'package:week_1_task_antonx/UI/screens/Museum.dart';
import 'package:week_1_task_antonx/UI/screens/Warszawa.daart.dart';
import 'package:week_1_task_antonx/core/Colors.dart';

import 'PolinMuseum.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Icon(Icons.arrow_back_ios),
                const SizedBox(height: 45,),
                const Text('Log in to Muz',
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900),
                  ),
                const SizedBox(height: 40),
                const Text('Email address',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: lightBlackColor),),
                const SizedBox(height: 15,),
                const CustomTextField(
                    textName: 'Email',
                    isPassword: false,
                    hintsText: 'Monik.bork@wp.pl',
                    textColor: blackColor,
                ),
                const SizedBox(height: 40),
                const Text('Password',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: lightBlackColor),),
                const SizedBox(height: 15,),
                const CustomTextField(
                    textName: 'Email',
                    isPassword: true,
                    hintsText: '********',
                    textColor: blackColor,),
                const SizedBox(height: 5.0,),
                const Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 70),
                CustomButton(buttonName: 'Log in', textColor: blackColor, buttonColor: lightRed, onPressed:
                Warszawa(),),
              ],
            ),
          ),
        )
    );
  }
}
