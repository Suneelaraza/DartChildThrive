
import 'package:childthive/Screens/login_screen.dart';
import 'package:childthive/Screens/mique_questions_screen.dart';
import 'package:childthive/Screens/mique_screen.dart';
import 'package:childthive/Screens/notify_screen.dart';
import 'package:childthive/Screens/profile_screen.dart';
import 'package:childthive/Screens/setting_screen.dart';
import 'package:childthive/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
class Miquescreen extends StatefulWidget {
  const Miquescreen({Key? key}) : super(key: key);

  @override
  State<Miquescreen> createState() => _MiquescreenState();
}

class _MiquescreenState extends State<Miquescreen> {

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(child: Image.asset('assets/images/blur.png', fit: BoxFit.cover,)),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 256,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),

                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10,left: 100),
                                child: Text("MIQUE",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black

                                ),),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: IconButton(onPressed: ()
                                    {
                                      Navigator.pop(context);
                                    }, icon: Icon(Icons.close_rounded)),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text("MIQUE will ask you 30 questions about your child's mentality \nand physical behavior. Take your time to answer questions \ncarefully for a much accurate analysis. You can only exit the quiz \n \n \n after your done with it. \nRemember: If you conduct another MIQUE session and provide \ndifferent answers, the diagnosis report may be completely \ndifferent from the one earlier. So make sure you provide accurate \nanswers when using MIQUE for the first time.   ",style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              fontStyle: FontStyle.italic

                            ),),
                          ),
                          const SizedBox(height: 12,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => MiqueQuestionScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                height: 40,
                                width: 118,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: const Color(0xff7D0CD4),
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color(0xff7D0CD4),
                                          offset: Offset.fromDirection(2.0, 2),
                                          )
                                    ]),
                                child: const Center(
                                  child: Text(
                                    "Start",
                                    style: TextStyle(fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),

          ],
        ),
      ),
    );
  }
}
