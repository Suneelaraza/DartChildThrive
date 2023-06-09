import 'package:childthive/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBEBDB),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              /*Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(child: Image.asset('assets/images/bg2.png', fit: BoxFit.cover)),
              )*/

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 64,),
                    Center(
                      child: Text(
                        "About ChildThrive",
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff7863B1),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Center(
                      child: Container(
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 116,
                          )),
                    ),
                    SizedBox(height: 46,),

                    Text(
                      "ChildThrive is a mental-health detection app, \n"
                          "specifically designed for parents with kids \n"
                          "under the ages of 3-12.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7863B1),
                      ),
                    ),

                    SizedBox(height: 46,),

                    Text(
                      "This app also educates you about your child's \n"
                          "mental disability, causes, symptoms, remedies \n"
                          "and also detects the type of disorder your child may have.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7863B1),
                      ),
                    ),

                    SizedBox(height: 32,),
                    Text(
                      "Want to begin a safer mental journey for your \n"
                          "child? Click on 'Start Journey' to proceed to the next step.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7863B1),
                      ),
                    ),

                    SizedBox(height: 72,),

                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (builder) => SignUpScreen()));
                        },
                        child: Container(
                          height: 82,
                          width: 248,
                          child: Center(
                            child: Text(
                              "Start Journey",
                              style: TextStyle(fontSize: 26, color: Color(0xff7D0CD4)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff7D0CD4),
                                    offset: Offset.fromDirection(2.0, 2),
                                    blurRadius: 13,
                                    spreadRadius: 2,
                                    blurStyle: BlurStyle.outer)
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/* Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/bg2.png', fit: BoxFit.cover),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Text(
                "About ChildThrive",
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xff7863B1),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 176, left: 130),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 146,
                )),
            Positioned(
              top: 360,
              left: 24,
              child: Text(
                "ChildThrive is a mental-health detection app, \n"
                "specifically designed for parents with kids \n"
                "under the ages of 3-12.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7863B1),
                ),
              ),
            ), Positioned(
              top: 460,
              left: 24,
              child: Text(
                "This app also educates you about your child's \n"
                "mental disability, causes, symptoms, remedies \n"
                "and also detects the type of disorder your child \n"
                "may have.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7863B1),
                ),
              ),
            ), Positioned(
              top: 580,
              left: 24,
              child: Text(
                "Want to begin a safer mental journey for your \n"
                "child? Click on 'Start Journey' to proceed to the \nnext step.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7863B1),
                ),
              ),
            ),
            Positioned(
              top: 720,
              left: 80,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => SignUpScreen()));
                },
                child: Container(
                  height: 82,
                  width: 248,
                  child: Center(
                    child: Text(
                      "Start Journey",
                      style: TextStyle(fontSize: 26, color: Color(0xff7D0CD4)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff7D0CD4),
                            offset: Offset.fromDirection(2.0, 2),
                            blurRadius: 13,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.outer)
                      ]),
                ),
              ),
            ),*/