
import 'package:childthive/Screens/account_screen.dart';
import 'package:childthive/Screens/app_version_screen.dart';
import 'package:childthive/Screens/notification_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(
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
              padding: EdgeInsets.only(left: 24,
              top: 46),
              child: TextButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) =>AccountScreen()));
                  }, child: Text("Account",style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),)),
            ),
          ),Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24,
              top: 24),
              child: TextButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) =>NotificatioScreen()));

                  }, child: Text("Notifications",style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),)),
            ),
          ),Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24,
              top: 24),
              child: TextButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) =>AppVersionScreen()));
                  }, child: Text("App version",style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),)),
            ),
          ),


        ],
      ),
    );
  }
}
