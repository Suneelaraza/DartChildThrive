

import 'package:flutter/material.dart';

class MiqueDiagnoseScreen extends StatefulWidget {
  const MiqueDiagnoseScreen({Key? key}) : super(key: key);

  @override
  State<MiqueDiagnoseScreen> createState() => _MiqueDiagnoseScreenState();
}

class _MiqueDiagnoseScreenState extends State<MiqueDiagnoseScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MIQUE",style: TextStyle(
          color: Color(0xff7863B1),
          fontWeight: FontWeight.bold,
          fontSize: 34,

        ),),
        actions: [
          IconButton(onPressed: ()
          {

          }, icon: Icon(Icons.print,color: Colors.black,size: 16,)),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(onPressed: ()
                {

                }, icon: IconButton(
              onPressed: ()
              {

              },

             icon: Icon(Icons.share,color: Colors.black,size: 16,)),
          ),
          ),
        ],
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset('assets/images/feet.png',height: 48,),
        ),


        elevation: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 36,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Name of child :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("Arthur Hillary",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Age :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("4 years",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Gender :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("Male",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Schooling type:",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("Public/Private School",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),
              SizedBox(height: 36,),
              Center(
                child: Text("DIAGNOSIS",style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Color(0xff7863B1),

                ),),
              ),
              SizedBox(height: 36,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Result :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("Autism Spectrum Disorder (ASD)",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Range/Severness :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 18,left: 12),
                    child: Text("74%",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Disorder type :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 12,top: 18),
                    child: Text("Neurodevelopmental ",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Common :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 12,top: 18),
                    child: Text("1 in 100 Children",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),
                ],
              ),SizedBox(height: 16,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("Cause :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 12,top: 18),
                    child: Text(" No actual cause, but Genetic \n can affect.",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),),
                  ),


                ],
              ),
              SizedBox(height: 24,),
                Text("Signs :",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),
              ),SizedBox(height: 12,),
                 Text("Doesn't respond with a smile or happy expression by 6 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Doesn't mimic sounds or facial expressions by 9 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Doesn't babble or coo by 12 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Doesn't gesture — such as point or wave — by 14 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Doesn't say single words by 16 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Doesn't play 'make-believe' or pretend by 18 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),
              SizedBox(height: 12,),
                 Text("Doesn't say two-word phrases by 24 months",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),SizedBox(height: 12,),
                 Text("Loses language skills or social skills at any age",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,

                ),),
              SizedBox(height: 24,),
              Text("Remedies :",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
              ),
              SizedBox(height: 12,),
              Text("Create a structured and predictable environment: Establishing a \nconsistent daily routine can help children with ASD feel more secure \nand comfortable. Use visual schedules or timers to help them understand \nand anticipate activities.",style: TextStyle(
                fontSize: 10,
                color: Colors.black,

              ),),SizedBox(height: 12,),
              Text("Provide clear and concise communication: Use simple and concrete \nlanguage when communicating with the child. Visual aids such as \npictures or social stories can assist in explaining concepts or \nexpectations.",style: TextStyle(
                fontSize: 10,
                color: Colors.black,

              ),),SizedBox(height: 12,),
              Text("Encourage social interaction: Engage the child in activities that promote \nsocial skills, such as turn-taking games, joint play, or shared interests. \nEncourage interactions with peers, siblings, or family members to \ndevelop social connections.",style: TextStyle(
                fontSize: 10,
                color: Colors.black,

              ),),

              SizedBox(height: 24,),
              Text("Immediate Action :",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
              ),
              SizedBox(height: 12,),
              Text("Make arrangements to attend your child to a \nChild psychiatrist. Your child should at least attend therapy for 3 \nmonths. After 3 months, come back and try MIQUE : After therapy \nto check how well his/her mentality has improved. You may share \nthis report with the child psychiatrist to aid them in their diagnosis",style: TextStyle(
                fontSize: 10,
                color: Colors.black,

              ),),

              SizedBox(height: 46,),
              Center(
                child: InkWell(
                  onTap: ()
                  {

                  },
                  child: Container(
                    height: 56,
                    width: 142,
                    child: Center(
                      child: Text("Done",style: TextStyle(
                          fontSize: 24,
                          color: Colors.white
                      ),),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xff7863B1),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff7863B1),
                            offset: Offset.fromDirection(2.0,2),
                            blurRadius: 13,
                          )
                        ]

                    ),
                  ),
                ),
              ),

              SizedBox(height: 32,),

            ],
          ),
        ),
      ),
    );
  }
}
