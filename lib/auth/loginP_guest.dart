import 'package:flutter/material.dart';
import 'package:robinfinal/auth/service/auth.dart';
import 'package:robinfinal/auth/service/auth_service.dart';
import 'package:robinfinal/dashboard/dashboard.dart';
import 'package:robinfinal/guest.dart';
import 'package:robinfinal/auth/signup_controller/signup.dart';

class loginP_guest extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
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
                  SizedBox(height: 100),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        hintText: "email",
                        border: OutlineInputBorder(
                          borderRadius : BorderRadius.circular(25),
                        )
                    ),
                  ),
                  SizedBox(height: 11),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius : BorderRadius.circular(25))
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed:
                      (){
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => guest(),
                        ));
                  }, child: Text("Sign in",style: TextStyle(color:Colors.teal),)
                  ),
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
                          child: Container(
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                            },
                            child: Text("Join now", style: TextStyle(color: Colors.blue),),
                          )

                          //   Link(
                          //     uri: Uri.parse('https://robinhoodarmy.com'),
                          //     builder: (context, followLink) => GestureDetector(
                          //     onTap: followLink,
                          //     child: Text(" Join now", style: TextStyle(color: Colors.blue)),
                          //   ),
                          // ),
                        ]
                    ),
                  ),
                  // Container(
                  //     height: 20,
                  //     width: 100,
                  //     child: Image.asset('assets/images/line.png')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

