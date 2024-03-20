import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:robinfinal/auth/service/auth_service.dart';
import 'package:robinfinal/dashboard/dashboard.dart';
import 'package:robinfinal/guest.dart';
import 'package:robinfinal/auth/signup_controller/signup.dart';

class LoginPage extends StatefulWidget{

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseService _auth = FirebaseService();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title:Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>guest()));
                },
                child: Text("Guest",style: TextStyle(color: Colors.white,fontSize: 18),)),
          ),
        ), backgroundColor: Colors.teal,),
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
            child: SingleChildScrollView(
              child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/sec_white_logo.png')),
                          SizedBox(width: 10),
                          Text("Robin Hood Army" , style: TextStyle(fontSize: 24 , color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 60),
                    TextField(
                      controller: _emailController,
                    decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.teal[50],
                         // hintText: "Username",
                         labelText: "Email",
                         border: OutlineInputBorder(
                         borderSide: BorderSide.none,
                         borderRadius : BorderRadius.circular(25),
                         )
                      ),
                    ),
                    SizedBox(height: 11),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.teal[50],
                         // hintText: "Password",
                         labelText: "Password",
                         border: OutlineInputBorder(
                         borderSide: BorderSide.none,
                         borderRadius : BorderRadius.circular(25))
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: ()async{
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        User ? user = await _auth.signUpMethod(email, password);
                        if(user!= null)
                        {
                            Fluttertoast.showToast(msg: "User is successfully created !");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard()));
                        }
                        else{
                           Fluttertoast.showToast(msg: "Some error has occurred");
                        }
                      },
                      child:Container(
                          height: 35,
                          width: 98,
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child:  Center(
                            child: Text("Sign in",style: TextStyle(color:Colors.teal)
                    ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //
                    // //     onPressed: (){
                    // //     Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard(),
                    // // ));
                    // // },


                  SizedBox(height: 15),
                  Text("OR",style: TextStyle(fontSize: 15,color:Colors.white)),
                  SizedBox(height: 25),
                  Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap :() {
                              FirebaseService.handleSignIn();
                            },
                            // child: Icon(FontAwesomeIcons.google, color: Colors.white),
                            child:Container(
                               height: 24,
                               width: 24,
                               child: Image.asset('assets/images/mail.png')),
                          ),
                          SizedBox(width: 50),
                          Container(
                              height: 24,
                              width: 24,
                              child: Image.asset('assets/images/insta.png')),
                          SizedBox(width: 50),
                          InkWell(
                            onTap: (){
                              // FirebaseService.login();
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image.asset('assets/images/twitter.png')),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Center(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not a Robin?", style: TextStyle(fontSize: 12, color: Colors.white)),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                            },
                            child: Text("Join now", style: TextStyle(color: Colors.blue),),
                          )
                        ]
                    ),
                    ),
                   ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}

