



import 'package:flutter/material.dart';

class MiqueAfterTherapyDiagnoseScreen extends StatefulWidget {
  const MiqueAfterTherapyDiagnoseScreen({Key? key}) : super(key: key);

  @override
  State<MiqueAfterTherapyDiagnoseScreen> createState() => _MiqueAfterTherapyDiagnoseScreenState();
}

class _MiqueAfterTherapyDiagnoseScreenState extends State<MiqueAfterTherapyDiagnoseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MIQUE : After Therapy",style: TextStyle(
          color: Color(0xff774BEF),
          fontWeight: FontWeight.bold,
          fontSize: 18,

        ),),
        actions: [
          IconButton(onPressed: ()
          {

          }, icon: Icon(Icons.print,color: Colors.black,size: 16,)),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(onPressed: ()
            {

            }, icon: Icon(Icons.share,color: Colors.black,size: 16,)),
          ),

        ],
        backgroundColor: Colors.white,


        elevation: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 24,),

              Center(child: Image.asset('assets/images/student.png',height: 82,)),

              SizedBox(height: 24,),
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
              SizedBox(height: 36,),

                  Text("Improved skills :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),SizedBox(height: 20,),

                  Text("Socializing with other kids \nEngagement in activities \nImproved reading and writing skills",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),
                  ),SizedBox(height: 36,),

                  Text("Improved further :",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),SizedBox(height: 20,),

                  Text("Monitor your child always. Keep a close watch on \nyour child's behavior. An improvement made \nshould be encouraged for further improvement  \nin your child's mentality Keep track of your child's daily activities and \nprep a time-table to balance out your child's \nlearning time.",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,

                    ),
                  ),

              SizedBox(height: 36,),

              Text("Overall Improvements :",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
              ),

              SizedBox(height: 54,),

              Center(
                child: Text("55%",style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),
                ),
              ),
              SizedBox(height: 54,),



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
                        borderRadius: BorderRadius.circular(28),
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
