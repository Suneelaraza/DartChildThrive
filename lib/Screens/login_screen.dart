
import 'package:childthive/Screens/childs_detail_screen.dart';
import 'package:childthive/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  FocusNode emailfocusnode = FocusNode();
  FocusNode passwordfocusnode = FocusNode();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    emailfocusnode.dispose();
    passwordfocusnode.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAD7C8),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /*Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/bgsignup.png',fit:BoxFit.cover ),
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 46,),
                  Center(
                    child: Text("Welcome Back!", style: TextStyle(
                      fontSize: 36,
                      color: Color(0xff7863B1),
                    ),),
                  ),

                  SizedBox(height: 36,),
                  Center(
                    child: Text("Login", style: TextStyle(
                      fontSize: 36,
                      color: Color(0xffE84C4C),
                    ),),
                  ),

                  SizedBox(height: 96,),

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
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Forgot password?",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                      ),),

                      SizedBox(width: 12,),
                      Text("Reset password",style: TextStyle(
                          color: Color(0xffE84C4C),
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),)
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Text("New to ChildThrive?",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                      ),),
                      SizedBox(width: 12,),
                      TextButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (builder) => SignUpScreen()));
                      }, child: Text("Sign Up",style: TextStyle(
                          color: Color(0xff5A24EC),
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),)),

                    ],
                  ),
                  SizedBox(height: 36,),
                  Center(
                    child: InkWell(
                      onTap: ()
                      {
                        if(_emailController.text.isEmpty)
                        {
                          Utils.flushErrorBarMessage("Please fill the blanks", context);

                        }else if(_passwordController.text.isEmpty)
                        {
                          Utils.flushErrorBarMessage("Please write the password", context);

                        }else if(_passwordController.text.length>6)
                        {
                          Utils.flushErrorBarMessage("You password should be strong in between 12 characters.", context);
                        }else if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty)
                        {
                          Utils.snackBar("Your password should be strong in between 8 characters then successfully login.", context);
                        }else if(RegExp(r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>])').hasMatch(_passwordController.text.toString())){
                          Utils.snackBar("Please add symbols to make strong password", context);
                        }
                        if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty)
                        {
                          if(_passwordController.text.length>6)
                          {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => ChildDetailScreen()));

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
                          child: Text("Login",style: TextStyle(
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
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

