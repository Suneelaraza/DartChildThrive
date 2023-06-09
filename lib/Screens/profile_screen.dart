

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {

  String dropdownValue = 'Red';
  final _emailController = TextEditingController();
  final _oldpasswordController = TextEditingController();
  final _newpasswordController = TextEditingController();
  final _renewpasswordController = TextEditingController();

  FocusNode emailfocusnode = FocusNode();
  FocusNode oldpasswordfocusnode = FocusNode();
  FocusNode newpasswordfocusnode = FocusNode();
  FocusNode renewpasswordfocusnode = FocusNode();
  FocusNode savefocusnode = FocusNode();


  FocusNode firstnamefocusnode = FocusNode();
  FocusNode lastnamefocusnode = FocusNode();

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _firstName.dispose();
    _lastName.dispose();
    _oldpasswordController.dispose();
    _newpasswordController.dispose();
    _renewpasswordController.dispose();

    emailfocusnode.dispose();
    oldpasswordfocusnode.dispose();
    newpasswordfocusnode.dispose();
    renewpasswordfocusnode.dispose();
    savefocusnode.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(
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
      body:SingleChildScrollView(
        child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const SizedBox(height: 14,),
                      const Center(
                        child: Text("Update your details",style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic
                        ),),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        height: 1.0,
                        width: 411,
                        color: const Color(0xff7863B1),
                      ),
                      const SizedBox(height: 20,),

                      const Text("Suffix",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 86,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff7863B1),
                                offset: Offset.fromDirection(2.0,2),
                                blurRadius: 4,
                              )
                            ]

                        ),
                        child: DropdownButton <String>(

                          value: dropdownValue,
                          icon: const Center(child: Icon(Icons.arrow_drop_down)),
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Red',
                              child: Text("-Select-"),
                            ), DropdownMenuItem<String>(
                              value: 'Green',
                              child: Text("Mr"),
                            ),DropdownMenuItem<String>(
                              value: 'Blue',
                              child: Text("Miss"),
                            ),DropdownMenuItem<String>(
                              value: 'Orange',
                              child: Text("Mrs"),
                            ),

                          ], onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue =newValue!;
                          });
                        },
                        ),
                      ),
                      const SizedBox(height: 8,),

                      const Text("First name",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46)

                        ),
                        child: TextFormField(
                          controller: _firstName,
                          focusNode: firstnamefocusnode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "e.g. john",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, firstnamefocusnode, lastnamefocusnode);
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),

                      const Text("Last name",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46)

                        ),
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          controller: _lastName,
                          focusNode:lastnamefocusnode ,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "e.g. john",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, lastnamefocusnode, emailfocusnode);
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),

                      const Text("Email",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(46),


                        ),
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          controller: _emailController,
                          focusNode: emailfocusnode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "e.g. john123@gmail.com",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, emailfocusnode, oldpasswordfocusnode);
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Old password",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),
                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46)

                        ),
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          obscureText: true,
                          focusNode: oldpasswordfocusnode,
                          controller: _oldpasswordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, oldpasswordfocusnode, newpasswordfocusnode);
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("New password",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46)

                        ),
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          obscureText: true,
                          focusNode: newpasswordfocusnode,
                          controller: _newpasswordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, newpasswordfocusnode, renewpasswordfocusnode);
                          },
                        ),
                      ), const SizedBox(height: 20,),
                      const Text("Retype New password",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      const SizedBox(height: 6,),

                      Container(
                        width: 340,
                        height: 46,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(46)

                        ),
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          obscureText: true,
                          focusNode: renewpasswordfocusnode,
                          controller: _renewpasswordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46),
                              borderSide: const BorderSide(
                                color: Color(0xff7863B1),

                              ),

                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff7863B1),

                                ),
                                borderRadius: BorderRadius.circular(46)
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            Utils.fieldFocusChange(
                                context, renewpasswordfocusnode, savefocusnode);
                          },
                        ),
                      ),
                      const SizedBox(height: 24,),
                      Center(
                        child: InkWell(
                          focusNode: savefocusnode,
                          canRequestFocus: true,
                          onTap: ()
                          {
                            if(_firstName.text.isEmpty)
                            {
                              Utils.flushErrorBarMessage("Please fill the blanks", context);

                            }
                            else if(_lastName.text.isEmpty)
                            {
                              Utils.flushErrorBarMessage("Please fill the blanks", context);

                            }else if(_emailController.text.isEmpty)
                            {
                              Utils.flushErrorBarMessage("Please fill the blanks", context);

                            }else if(_oldpasswordController.text.isEmpty)
                            {
                              Utils.flushErrorBarMessage("Please write the password", context);

                            }else if(_newpasswordController.text.isEmpty)
                            {
                              Utils.flushErrorBarMessage("Please write the password", context);

                            }else if(_newpasswordController.text.length>6)
                            {
                              Utils.flushErrorBarMessage("You password should be strong in between 8 characters.", context);
                            }else if(_newpasswordController.text.length>6)
                            {
                              Utils.flushErrorBarMessage("You password should be strong in between 8 characters.", context);
                            }else if(_oldpasswordController.text.length>6)
                            {
                              Utils.flushErrorBarMessage("You password should be strong in between 8 characters.", context);
                            }else if(_emailController.text.isNotEmpty)
                            {
                              Utils.snackBar("Your password should be strong in between 8 characters then successfully Saved.", context);
                            }else if(RegExp(r'^(?=.*?[A-Za-z])(?=.*?\d)(?=.*?[!@#$%^&*(),.?":{}|<>])').hasMatch(_newpasswordController.text.toString())){
                              Utils.snackBar("Please add symbols to make strong password", context);
                            }
                            if(_emailController.text.isNotEmpty && _oldpasswordController.text.isNotEmpty && _newpasswordController.text.isNotEmpty)
                            {
                              if(_oldpasswordController.text.length>6 && _newpasswordController.text.length>6)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (builder) => const ProfilScreen()));

                              }
                            }
                            else{
                              if (kDebugMode) {
                                print("Api in not working");
                              }
                            }
                          },
                          child: Container(
                            height: 56,
                            width: 142,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color(0xff7863B1),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff7863B1),
                                    offset: Offset.fromDirection(2.0,2),
                                    blurRadius: 13,
                                  )
                                ]

                            ),
                            child: const Center(
                              child: Text("Save",style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

      ),
      );
  }
}
