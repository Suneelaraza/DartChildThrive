
import 'package:childthive/Screens/spalsh_screen.dart';
import 'package:childthive/Screens/splash_screen2.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: Scaffold(
            body: SplashScreen(),
          ),
        );
      });

  }
}
