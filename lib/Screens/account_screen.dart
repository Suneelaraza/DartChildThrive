
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",style: TextStyle(
          color: Color(0xff7863B1),
          fontSize: 34,

        ),),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 32,)),


        elevation: 1,
        centerTitle: true,
      ),
      body: Column(
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24, top: 46),
              child: TextButton(onPressed: ()
              {

              }, child: Text("Delete Account",style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              ),)),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 36,
                  top: 8),
              child: Text("Delete your account and all of \nits data from the app.",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic
              ),),
            ),
          ),

           Align(
             alignment: Alignment.topRight,
             child: Padding(
               padding: const EdgeInsets.only(right: 24, top: 32),
               child: InkWell(
                    onTap: ()
                    {
                      showDialog(
                          context: context,
                          builder: (context)
                          {
                            return Container(
                              child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  side: BorderSide(
                                    color: Colors.red,
                                    width: 2
                                  )
                                ),
                                title: Center(child: Text("Are you sure?",style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),)),

                                elevation: 10,
                                content: Text("This action is irreversible and \nyou will not be able to access \nyour account again. "),
                                actions: [
                                  Center(
                                    child: InkWell(
                                      onTap: ()
                                      {

                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 24),
                                        height: 46,
                                        width: 160,
                                        child: Center(
                                          child: Text("Delete Account",style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white
                                          ),),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18),
                                            color: Colors.red,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.red,
                                                offset: Offset.fromDirection(2.0,2),
                                                blurRadius: 13,
                                              )
                                            ]

                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                      );
                    },
                    child: Container(
                      height: 52,
                      width: 188,
                      child: Center(
                        child: Text("Delete Account",style: TextStyle(
                            fontSize: 20,
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
           ),


        ],
      ),
    );
  }
}
