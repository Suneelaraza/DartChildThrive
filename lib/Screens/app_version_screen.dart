

import 'package:flutter/material.dart';

class AppVersionScreen extends StatefulWidget {
  const AppVersionScreen({Key? key}) : super(key: key);

  @override
  State<AppVersionScreen> createState() => _AppVersionScreenState();
}

class _AppVersionScreenState extends State<AppVersionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Version",style: TextStyle(
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

          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24,
                      top: 46),
                  child: TextButton(onPressed: ()
                  {

                  }, child: const Text("Version",style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),)),
                ),
              ),

            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 36,
                  top: 8),
              child: Text("Enable/Disable any notifications \nsent from the app",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic
              ),),
            ),
          ),






        ],
      ),
    );
  }
}
