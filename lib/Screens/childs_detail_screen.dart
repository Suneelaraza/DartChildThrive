import 'package:flutter/material.dart';

import '../utils.dart';
import 'home_screen.dart';

class ChildDetailScreen extends StatefulWidget {
  const ChildDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChildDetailScreen> createState() => _ChildDetailScreenState();
}

class _ChildDetailScreenState extends State<ChildDetailScreen> {

  String dropdownValue = 'Red';
  String dropdownValue1 = 'Red';

  DateTime dateTime = DateTime(2023,6,3,);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  FocusNode namefocusnode = FocusNode();
  FocusNode agefocusnode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _nameController.dispose();
    _ageController.dispose();

    namefocusnode.dispose();
    agefocusnode.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECC3C5),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              /*Padding(
                padding: const EdgeInsets.only(top: 40),
                child:
                    Center(child: Image.asset('assets/images/detailbg.png', fit: BoxFit.cover)),
              ),*/
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 46,),
                    Text(
                      "PLease enter your child's details below",
                      style: TextStyle(
                        fontSize: 29,
                        color: Color(0xff7863B1),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Center(
                      child: Text(
                        "These data are needed to provide an accurate analysis \n So please provide all the true details of your child",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 32,),
                    Text(
                      "Name",
                      style: TextStyle(color: Color(0xff7863B1), fontSize: 20),
                    ),
                    Container(
                      width: 340,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        controller: _nameController,
                        focusNode: namefocusnode,
                        decoration: InputDecoration(
                          hintText: "e.g. Alan Himer",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onFieldSubmitted: (value) {
                          Utils.fieldFocusChange(
                              context, namefocusnode, agefocusnode);
                        },
                      ),
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24,),
                            Text(
                              "Date of birth",
                              style: TextStyle(color: Color(0xff7863B1), fontSize: 20),
                            ),
                            InkWell(
                              onTap: ()
                              async {
                                final date = await pickData();
                                if(date == null) return;
                                setState(() {
                                  dateTime = date;
                                });
                              },
                              child: Container(
                                width: 200,
                                height: 56,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0)),
                                child: Center(child: Text("${dateTime.year}/${dateTime.month}/${dateTime.day}",style: TextStyle(
                                  fontSize: 18
                                ),)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 24,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24,),
                            Text(
                              "Age",
                              style: TextStyle(color: Color(0xff7863B1), fontSize: 20),
                            ),
                            Container(
                              width: 80,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0)),
                              child: TextField(
                                controller: _ageController,
                                focusNode: agefocusnode,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0)),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 24,),
                    Text(
                      "Gender",
                      style: TextStyle(color: Color(0xff7863B1), fontSize: 20),
                    ),
                    Container(
                      width: 160,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0)),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Center(child: Icon(Icons.arrow_drop_down)),
                        items: [
                          DropdownMenuItem<String>(
                            value: 'Red',
                            child: Text("--Select--"),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Blue',
                            child: Text("Male"),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Green',
                            child: Text("Female"),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ),

                    SizedBox(height: 24,),
                    Text(
                      "Schooling type",
                      style: TextStyle(color: Color(0xff7863B1), fontSize: 20),
                    ),
                    Container(
                      width: 240,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0)),
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        hint: Text("--Select--"),

                        icon: Center(child: Icon(Icons.arrow_drop_down)),
                        items: [
                          DropdownMenuItem<String>(
                            value: 'Red',
                            child: Text("--Select--"),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Blue',
                            child: Text("Public/Private School"),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Green',
                            child: Text("Home School"),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Black',
                            child: Text("Not Schooling yet"),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 72,),
                    Center(
                      child: InkWell(
                        onTap: () {
                          String ageString = _ageController.text;
                          if(_nameController.text.isEmpty)
                          {
                            Utils.flushErrorBarMessage("Please fill the blanks", context);

                          }
                          else if(_ageController.text.isEmpty)
                          {
                            Utils.flushErrorBarMessage("Please fill the blanks", context);

                          }else if(ageString.isNotEmpty)
                          {
                            int age = int.parse(ageString);
                           if (age >= 3 && age <= 12)
                              {
                                Utils.snackBar("Successfuly registered.", context);
                                Navigator.push(context, MaterialPageRoute(builder: (builder) => HomeScreen()));

                              }
                            else
                              {
                                Utils.flushErrorBarMessage("Child age must be 3 to 12 years in between.", context);

                              }
                          }
                          else{
                            print("Api in not working");
                          }
                        },
                        child: Container(
                          height: 64,
                          width: 126,
                          child: Center(
                            child: Text(
                              "Finish",
                              style: TextStyle(fontSize: 26, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff7863B1),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff7863B1),
                                  offset: Offset.fromDirection(2.0, 2),
                                  blurRadius: 13,
                                )
                              ]),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<DateTime?> pickData() => showDatePicker(
    context: context,
    initialDate: dateTime,
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),);
}

