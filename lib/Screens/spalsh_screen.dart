
import 'package:childthive/Screens/splash_screen2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          /*Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Center(child: Image.asset('assets/images/bg4x.png', fit: BoxFit.cover)),
          ),*/

          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color(0xffFCFCD7), Color(0xffEA92CC)], // Set your desired gradient colors here
                center: Alignment.centerRight, // Set the gradient's center point
                radius: 1, // Set the gradient's radius
              ),
            ),
          ),
          Column(
            children: [

              SizedBox(height: 146,),
              Center(child: Image.asset('assets/images/logo.png', height: 116,)),

              SizedBox(height: 36,),

              Text("ChildThrive",style: TextStyle(
                fontSize: 56,
                color: Color(0xffE83394),
              ),),

              SizedBox(height: 36,),

              Text("Official Child-Mental Health Detector App",style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),

              SizedBox(height: 156,),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => SplashScreen2()));
                },
                child: Container(
                  height: 82,
                  width: 165,
                  child: Center(
                    child: Text(
                      "Begin",
                      style: TextStyle(fontSize: 36, color: Color(0xffE211CD)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xffE211CD),
                            offset: Offset.fromDirection(2.0, 2),
                            blurRadius: 13,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.outer)
                      ]),
                ),
              ),

            ],
          )

        ],
      )
    );
  }
}
