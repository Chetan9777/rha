import 'package:flutter/material.dart';

class thank_u extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children:[
           SizedBox(height: 200 ,),
           Text("Thank you for Donating !\n",style: TextStyle(color: Colors.black,fontSize: 35),textAlign: TextAlign.center,),
           Container(
               height: 200,
               child: Image(image: AssetImage("assets/images/check.png"))),
        ],
      ),
      );
  }

}