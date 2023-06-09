


import 'package:flutter/material.dart';

class NotifyScreen extends StatefulWidget {
  const NotifyScreen({Key? key}) : super(key: key);

  @override
  State<NotifyScreen> createState() => _NotifyScreenState();
}

class _NotifyScreenState extends State<NotifyScreen> {

  DateTime dateTime = DateTime(2023,6,3,9,45);


  @override
  Widget build(BuildContext context) {
    final hours  = dateTime.hour.toString().padLeft(2,'0');
    final minute  = dateTime.minute.toString().padLeft(2,'0');
    return Scaffold(
      appBar: AppBar(
        title: Text("Notify Me!",style: TextStyle(
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

                  }, child: const Text("Set Reminder",style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),)),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 78, top: 46),
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
                                        color: Color(0xff7863B1),
                                        width: 2
                                    )
                                ),
                                title: Center(child: Column(
                                  children: [
                                    Text("Notify Me!",style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff7863B1),
                                      fontStyle: FontStyle.italic,
                                    ),),
                                    SizedBox(height: 24,),
                                    Text("Select Date and Time",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),),

                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                                style:ButtonStyle(
                                                  backgroundColor: MaterialStatePropertyAll(
                                                      Colors.white
                                                  ) ,
                                                ) ,
                                                onPressed: ()
                                               async {
                                                  final date = await pickData();
                                                  if(date == null) return;
                                                  setState(() {
                                                    dateTime = date;
                                                  });
                                                }, child: Text("${dateTime.year}/${dateTime.month}/${dateTime.day}",style: TextStyle(
                                              color: Colors.black
                                            ),)),
                                            SizedBox(width: 24,),
                                            ElevatedButton(style:ButtonStyle(
                                              backgroundColor: MaterialStatePropertyAll(
                                                Colors.white
                                              ) ,
                                            ) ,
                                                onPressed: ()
                                               async {
                                                  final time = await pickTime();
                                                  if(time == null) return;
                                                 final newDateTime = DateTime(
                                                   dateTime.year,
                                                   dateTime.month,
                                                   dateTime.day,
                                                   time.hour,
                                                   time.minute,
                                                 );
                                                 setState(() {
                                                  dateTime=  newDateTime;
                                                 });
                                                }, child: Text("$hours:$minute",style: TextStyle(
                                                    color: Colors.black
                                                ),)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                                elevation: 10,
                                content: Text("Remember ; Your child's mental health will only improve \nif you allow yourself to spend more time with him/her. \nConsider spending more than 2 hours with your child \nfor a better improvement. ",style: TextStyle(
                                  fontSize: 10,
                                ),),

                                actions: [
                                  Center(
                                    child: InkWell(
                                      onTap: ()
                                      {

                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 24),
                                        height: 38,
                                        width: 84,
                                        child: Center(
                                          child: Text("Save",style: TextStyle(
                                              fontSize: 18,
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
                                ],
                              ),
                            );
                          }
                      );
                    },
                    child: Container(
                      height: 34,
                      width: 97,
                      child: Center(
                        child: Text("Notify Me!",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                        ),),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 36,
                  top: 8),
              child: Text("Set a notification to spend time with \nyour child. Set a time that you are \nflexible with.",style: TextStyle(
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

  Future<DateTime?> pickData() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),);

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));
}
