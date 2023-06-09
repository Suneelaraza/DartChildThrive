

import 'package:childthive/Screens/mique_after_therapy_diagnose.dart';
import 'package:childthive/Screens/mique_after_therapy_screen.dart';
import 'package:childthive/Screens/mique_diagnose_screen.dart';
import 'package:flutter/material.dart';

class MiqueAfterTherapyQuestioScreen extends StatefulWidget {
  const MiqueAfterTherapyQuestioScreen({Key? key}) : super(key: key);

  @override
  State<MiqueAfterTherapyQuestioScreen> createState() => _MiqueAfterTherapyQuestioScreenState();
}

class _MiqueAfterTherapyQuestioScreenState extends State<MiqueAfterTherapyQuestioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 46,),
          Center(
            child: Text("MIQUE : After Therapy",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff774BEF),

            ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 24),
                child: Image.asset('assets/images/student.png',height: 66,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 18),
                child: Text("Questions 1/20",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,

                ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 24),
                child: Text("1.",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,

                ),),
              ), Padding(
                padding: const EdgeInsets.only(left: 4,top: 24),
                child: Text("Has your child taken a liking to socialize with \nother children?",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,

                ),),
              ),
            ],
          ),
          SizedBox(height: 36,),
          Center(child: Image.asset('assets/images/childs.png',width: 300,height: 200,)),

          SizedBox(height: 36,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 58,
                  width: 140,
                  child: Center(child: Text("Yes",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),)),
                  color: Color(0xff7863B1),

                ),Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                    height: 58,
                    width: 140,
                    child: Center(child: Text("No",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)),
                    color: Color(0xff7863B1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36,),
          Container(
            height: 58,
            width: 140,
            child: Center(child: Text("Kind of",style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),)),
            color: Color(0xff7863B1),
          ),
          SizedBox(height: 36,),
          TextButton(onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (builder) => MiqueAfterTherapyDiagnoseScreen()));
          }, child: Text("Mique After Diagnose")),SizedBox(height: 36,),


        ],
      ),
    );
  }
}
