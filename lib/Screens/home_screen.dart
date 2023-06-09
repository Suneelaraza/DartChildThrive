
import 'package:childthive/Screens/learn_screen.dart';
import 'package:childthive/Screens/login_screen.dart';
import 'package:childthive/Screens/mique_screen.dart';
import 'package:childthive/Screens/notify_screen.dart';
import 'package:childthive/Screens/profile_screen.dart';
import 'package:childthive/Screens/setting_screen.dart';
import 'package:childthive/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC1C2E8),
      key: _globalKey,
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              /*Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(child: Image.asset('assets/images/homebg.png', fit: BoxFit.cover)),
              ),*/
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: IconButton(onPressed: ()
                    {
                      _globalKey.currentState?.openDrawer();
                    }, icon: const Icon(Icons.menu,size: 32,)),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      Center(
                        child: Image.asset(
                              'assets/images/logo.png',
                              height: 105,
                            ),
                      ),
                       const SizedBox(height: 12,),
                       Center(
                         child: const Text(
                            "ChildThrive",
                            style: TextStyle(
                              fontSize: 36,
                              color: Color(0xff7863B1),
                            ),
                          ),
                       ),

                      SizedBox(height: 24,),
                      Text(
                        "Hello John Doe!",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 225,
                          width: 340,
                          decoration: BoxDecoration(
                              color: const Color(0xffB788E6),
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(color: Colors.black)
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text("MIQUE",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white

                                ),),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text("Want to know if your child has a mental disability? \n MIQUE is a tool that will detect the type of \n mental disorder your child may or may not have. \n It will also provide you with a full diagnosis report \n at the end of the session.",style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black

                                ),),
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
                                  Navigator.push(context, MaterialPageRoute(builder: (builder) =>Miquescreen()));
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
                      ),
                  SizedBox(height: 24,),
                  Center(
                    child: Container(
                      height: 262,
                      width: 340,
                      decoration: BoxDecoration(
                          color: const Color(0xff889BE6),
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: Colors.black)

                      ),
                      child: Column(
                          children: [
                      const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Learn about THEM",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white

                      ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6,),
                      child: Text("'Learn about Them' is a tool that will help \n you fully understand about the possible mental \n disabilities that could affect children either due \n to genetics, social pressure/isolation or even \n traumatic experiences. It will teach possibly \n everything you need to know about mental \n disabilities in children.",style: TextStyle(
                          fontSize: 13,
                          color: Colors.black

                      ),),
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 6,left: 90),
                          child: Text("Tap on",style: TextStyle(
                              fontSize: 14,
                              color: Colors.black

                          ),),
                        ),Padding(
                          padding: EdgeInsets.only(top: 6,left: 3),
                          child: Text("Learn",style: TextStyle(
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
                        Navigator.push(context, MaterialPageRoute(builder: (builder) => LearnAboutScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xffD4DAF3),
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
                              "Learn",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),

                    ),
                ),

                    ],
                          ),

                        ),
                  ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              height: 300,
              color: const Color(0xffEDB6EF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 88),
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),

                    ),
                  ),
                  const SizedBox(height: 12,),
                  const Text("John Doe",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
                ],
              ),
            ),
            MenuItems(),
          ],
        ),
      ),
    );
  }
  Widget MenuItems()
  {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => const ProfilScreen()));
            },
            child: Row(
              children: const [
                Expanded(child: Icon(Icons.person,color: Colors.grey,size: 32,)),
                Expanded(
                    flex: 3,
                    child: Text("Profile",style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 32),
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => const SettingScreen()));
            },
            child: Row(
              children: const [
                Expanded(child: Icon(Icons.settings,color: Colors.grey,size: 32,)),
                Expanded(
                    flex: 3,
                    child: Text("Settings",style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 32),
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (builder) =>NotifyScreen()));

            },
            child: Row(
              children: const [
                Expanded(child: Icon(Icons.notifications,color: Colors.grey,size: 32,)),
                Expanded(
                    flex: 3,
                    child: Text("Notify Me!",style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 32),
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (builder) =>Miquescreen()));
            },
            child: Row(
              children: [
                Expanded(child: Image.asset('assets/images/mique3.png',height: 36,)),
                const Expanded(
                    flex: 3,
                    child: Text("MIQUE",style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 32),
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => const LoginScreen()));

            },
            child: Row(
              children: const [
                Expanded(child: Icon(Icons.logout,color: Colors.grey,size: 32,)),
                Expanded(
                    flex: 3,
                    child: Text("Log out",style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
