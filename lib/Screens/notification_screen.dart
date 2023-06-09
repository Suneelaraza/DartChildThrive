
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class NotificatioScreen extends StatefulWidget {
  const NotificatioScreen({Key? key}) : super(key: key);

  @override
  State<NotificatioScreen> createState() => _NotificatioScreenState();
}

class _NotificatioScreenState extends State<NotificatioScreen> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",style: TextStyle(
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
                  padding: EdgeInsets.only(left: 24,
                    top: 46),
                  child: TextButton(onPressed: ()
                  {

                  }, child: Text("Set Notificatios",style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),)),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24,top: 46),
                  child: LiteRollingSwitch(
                    //initial value
                    value: true,
                    textOn: 'Disabled',
                    textOff: 'Enabled',
                    colorOn: Colors.green,
                    colorOff: Colors.red,
                    iconOn: Icons.done,
                    iconOff: Icons.remove_circle_outline,
                    textSize: 16.0,
                    onChanged: (bool state) {
                      //Use it to manage the different states
                      print('Current State of SWITCH IS: $state');
                    }, onTap: ()
                  {

                  }, onDoubleTap: ()
                  {

                  }, onSwipe: ()
                  {

                  },
                  ),
                ),
              ),



            ],
          ),
          Align(
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
