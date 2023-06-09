
import 'package:flutter/material.dart';

class LearnAboutScreen extends StatefulWidget {
  const LearnAboutScreen({Key? key}) : super(key: key);

  @override
  State<LearnAboutScreen> createState() => _LearnAboutScreenState();
}

class _LearnAboutScreenState extends State<LearnAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn About Them",style: TextStyle(
          color: Color(0xff889BE6),
          fontSize: 30,

        ),),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.close_rounded,color: Colors.black,size: 32,)),


        elevation: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 32,),
              Text("Autism Spectrum Disorder (ASD): ASD is a neurodevelopmental disorder that \naffects social interaction, communication, and behavior. Symptoms typically \nappear in early childhood.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Attention-Deficit/Hyperactivity Disorder (ADHD): ADHD is characterized by \npersistent patterns of inattention, hyperactivity, and impulsivity that can \ninterfere with a child's functioning and development. It often becomes \ninterfere with a child's functioning and development. It often becomes \nnoticeable during early school years.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),
              SizedBox(height: 24,),
              Text("Intellectual Disability: Intellectual disability (formerly referred to as mental \nretardation) involves limitations in intellectual functioning and adaptive \nbehavior. It can cause difficulties in learning, problem-solving, and independent \nliving skills.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Specific Learning Disabilities: Learning disabilities are conditions that affect a \nchild's ability to acquire and use certain academic skills, such as reading, \nwriting, or math. Common examples include dyslexia (reading disability) and \ndyscalculia (mathematics disability).",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Oppositional Defiant Disorder (ODD): ODD is characterized by a pattern of \ndefiant, disobedient, and hostile behavior towards authority figures. Children \nwith ODD often have difficulties regulating their emotions and interacting with \npeers.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Conduct Disorder (CD): CD involves persistent patterns of aggressive and \nantisocial behavior, uch as aggression towards people or animals, destruction \nof property, deceitfulness, and iolation of rules. It is more severe than ODD.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Anxiety Disorders: Anxiety disorders, such as generalized anxiety disorder, \nseparation anxiety isorder, or specific phobias, can occur in children and \nsignificantly impact their daily functioning and well-being.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Mood Disorders: Mood disorders, including major depressive disorder and \nbipolar disorder, can ffect children and lead to persistent feelings of sadness, \nirritability, or mood swings.",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),SizedBox(height: 24,),
              Text("Communication Disorders: Communication disorders involve difficulties in \npeech, language, nd communication skills. Examples include speech sound \ndisorders (e.g., articulation problems)and language disorders (e.g., expressive \nor receptive language deficits).",style: TextStyle(
                fontSize: 12,
                color: Colors.black,

              ),),
              SizedBox(height: 24,),

            ],
          ),
        ),
      ),
    );
  }
}
