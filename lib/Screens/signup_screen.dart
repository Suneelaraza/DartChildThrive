
import 'package:childthive/Screens/childs_detail_screen.dart';
import 'package:childthive/Screens/home_screen.dart';
import 'package:childthive/Screens/login_screen.dart';
import 'package:childthive/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

String dropdownValue = 'Red';
ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final _repasswordController = TextEditingController();

final _firstName = TextEditingController();
final _lastName = TextEditingController();

FocusNode emailfocusnode = FocusNode();
FocusNode firstnamelfocusnode = FocusNode();
FocusNode lastnamelfocusnode = FocusNode();
FocusNode passwordfocusnode = FocusNode();
FocusNode repasswordfocusnode = FocusNode();

@override
void dispose() {
  // TODO: implement dispose
  super.dispose();
  _emailController.dispose();
  _firstName.dispose();
  _lastName.dispose();
  _passwordController.dispose();
  _repasswordController.dispose();


  emailfocusnode.dispose();
  firstnamelfocusnode.dispose();
  lastnamelfocusnode.dispose();
  passwordfocusnode.dispose();
  repasswordfocusnode.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xffEAD7C8),
        body: SingleChildScrollView(
          child: Stack(
            children: [

              /*Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(child: Image.asset('assets/images/bgsignup.png',fit:BoxFit.cover )),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 46),
                  Center(
                    child: Text("Welcome to ChildThrive", style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff7863B1),
                ),
                    ),
                  ),
                SizedBox(height: 30,),
                Center(
                  child: Text("To get started, please", style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                ),SizedBox(height: 36,),
                Center(
                  child: Text("Sign Up", style: TextStyle(
                    fontSize: 36,
                    color: Color(0xffE84C4C),
                  ),
                ),
                ),
                    SizedBox(height: 46,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Suffix",style: TextStyle(
                                color: Color(0xff7863B1),
                                fontSize: 16
                            ),),

                            Container(
                              width: 86,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(46)

                              ),
                              child: DropdownButton <String>(

                                value: dropdownValue,
                                icon: Center(child: Icon(Icons.arrow_drop_down)),
                                items: [
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
                          ],
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First name",style: TextStyle(
                                color: Color(0xff7863B1),
                                fontSize: 16
                            ),),

                            Container(
                              width: 112,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(46)

                              ),
                              child: TextFormField(
                                controller: _firstName,
                                focusNode: firstnamelfocusnode,
                                decoration: InputDecoration(
                                  hintText: "e.g. john",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(46)
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  Utils.fieldFocusChange(
                                      context, firstnamelfocusnode, lastnamelfocusnode);
                                },
                              ),
                            ),
                          ],
                        ), SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Last name",style: TextStyle(
                                color: Color(0xff7863B1),
                                fontSize: 16
                            ),),

                            Container(
                              width: 112,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(46)

                              ),
                              child: TextFormField(
                                controller: _lastName,
                                focusNode: lastnamelfocusnode,
                                decoration: InputDecoration(
                                  hintText: "e.g. john",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(46)
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  Utils.fieldFocusChange(
                                      context, lastnamelfocusnode, emailfocusnode);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Text("Email",style: TextStyle(
                        color: Color(0xff7863B1),
                        fontSize: 20
                    ),),
                    Container(
                      width: 340,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(46)

                      ),
                      child: TextFormField(

                        focusNode: emailfocusnode,
                        controller: _emailController,
                        keyboardType:TextInputType.emailAddress ,
                        decoration: InputDecoration(
                          hintText: "e.g. johndoe123@gmail.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46)
                          ),
                        ),
                        onFieldSubmitted: (value) {
                          Utils.fieldFocusChange(
                              context, emailfocusnode, passwordfocusnode);
                        },
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text("Password",style: TextStyle(
                        color: Color(0xff7863B1),
                        fontSize: 20
                    ),),
                    Container(
                      width: 340,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(46)

                      ),
                      child: TextFormField(
                        focusNode: passwordfocusnode,
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _obsecurePassword.value,
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46)
                          ),
                        ),
                        onFieldSubmitted: (value) {
                          Utils.fieldFocusChange(
                              context, passwordfocusnode, repasswordfocusnode);
                        },
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text("Re-enter Password",style: TextStyle(
                        color: Color(0xff7863B1),
                        fontSize: 20
                    ),),
                    Container(
                      width: 340,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(46)

                      ),
                      child: TextFormField(
                        obscureText: true,
                        focusNode: repasswordfocusnode,
                        controller: _repasswordController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(46)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32,),
                    Center(
                      child: InkWell(
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

                          }else if(_passwordController.text.isEmpty)
                          {
                            Utils.flushErrorBarMessage("Please write the password", context);

                          }else if(_passwordController.text.length>6)
                          {
                            Utils.flushErrorBarMessage("You password should be strong in between 8 characters.", context);
                          }else if(_repasswordController.text.length>6)
                          {
                            Utils.flushErrorBarMessage("You password should be strong in between 8 characters.", context);
                          }else if(_emailController.text.isNotEmpty)
                          {
                            Utils.snackBar("Your password should be strong in between 8 characters then successfully Sign up.", context);
                          }else if(RegExp(r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>])').hasMatch(_passwordController.text.toString())){
                            Utils.snackBar("Please add symbols to make strong password", context);
                          }
                          if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty && _repasswordController.text.isNotEmpty)
                          {
                            if(_passwordController.text.length>6 && _repasswordController.text.length>6)
                            {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) =>ChildDetailScreen()));
                            }
                          }
                          else{
                            print("Api in not working");
                          }
                        },
                        child: Container(
                          height: 56,
                          width: 142,
                          child: Center(
                            child: Text("Next",style: TextStyle(
                                fontSize: 24,
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
                    SizedBox(height: 24,),
                    Center(
                      child: Text("Already have an account?",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                      ),),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => LoginScreen()));
                        },
                        child: Text("Login",style: TextStyle(
                            color: Color(0xff7863B1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

