

import 'package:childthive/Screens/mique_after_therapy_questions.dart';
import 'package:flutter/material.dart';

import 'mique_questions_screen.dart';
import 'mique_screen.dart';

class MiqueAfterTherapyScreen extends StatefulWidget {
  const MiqueAfterTherapyScreen({Key? key}) : super(key: key);

  @override
  State<MiqueAfterTherapyScreen> createState() => _MiqueAfterTherapyScreenState();
}

class _MiqueAfterTherapyScreenState extends State<MiqueAfterTherapyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB9CFE7),
      appBar: AppBar(

        title: Text("MIQUE : After Therapy",style: TextStyle(
          color: Color(0xff774BEF),
          fontSize: 28,

        ),),
        backgroundColor: Color(0xffB9CFE7),
        leading: InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 32,)),


        elevation: 1,
        centerTitle: true,
      ),
      body: Stack(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container (
                height: 295,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: Colors.black),
                    gradient: LinearGradient(
                    colors: [Color(0xffB5EDDC), Color(0xff8A6AAB)], // Set your desired gradient colors here
                    begin: Alignment.topLeft, // Set the gradient's starting point
                    end: Alignment.bottomLeft, // Set the gradient's ending point
                  ),

                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10,left: 100),
                          child: Text("NOTICE!",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white

                          ),),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 46),
                          child: IconButton(onPressed: ()
                          {
                            Navigator.pop(context);
                          }, icon: Icon(Icons.close_rounded)),
                        )
                      ],
                    ),
                    SizedBox(height: 18,),

                    Text("You can use this tool only if your child has \nattempted at least 2-3 months of therapy.",style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic

                      ),
                    ),SizedBox(height: 18,),

                    Text("This is similar to MIQUE but only has 20 \nquestions. It is more of a wellness and \nimprovement check for your child.",style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic

                      ),
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 6,left: 60),
                          child: Text("Tap on",style: TextStyle(
                              fontSize: 14,
                              color: Colors.black

                          ),),
                        ),Padding(
                          padding: EdgeInsets.only(top: 6,left: 3),
                          child: Text("Start Session",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.italic

                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6,left: 3),
                          child: Text("to proceed",style: TextStyle(
                              fontSize: 14,
                              color: Colors.black

                          ),),
                        ),

                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder) =>MiqueAfterTherapyQuestioScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Container(
                          height: 35,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xffEDB6EF),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xff7D0CD4),
                                    offset: Offset.fromDirection(2.0, 2),
                                    blurRadius: 13,
                                    spreadRadius: 2,
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: const Center(
                            child: Text(
                              "Start Session",
                              style: TextStyle(fontSize: 18, color: Colors.black),
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
          )
        ],
      ),
    );
  }
}
