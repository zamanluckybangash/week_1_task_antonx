import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week_1_task_antonx/UI/screens/LogInScreen.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360 , 690),
        builder: (BuildContext context){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LogInScreen(),
          );
        }
        );
  }
}
