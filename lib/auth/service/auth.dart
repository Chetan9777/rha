import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robinfinal/auth/LoginPage.dart';
import 'package:robinfinal/dashboard/dashboard.dart';

class authPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream : FirebaseAuth.instance.authStateChanges(),
      builder: (context,AsyncSnapshot<User?> snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(snapshot.hasData){
          return dashboard();
        }
        else{
          return LoginPage();
        }
    },
    ),
    );
  }
//   
}