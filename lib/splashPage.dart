import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:robinfinal/auth/service/auth.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();

}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
   }

   _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>authPage()));
    });
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:Container(
          color: Colors.teal,
          child: Center(
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                    height:170,
                    width:256,
                    child: Image.asset('assets/images/main_logo_transparent.png')),
                   SizedBox(height: 80),
                   Text("Robin Hood Army",style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.w300),),
                 ],
               )
    ),
        ),
    );
  }
}