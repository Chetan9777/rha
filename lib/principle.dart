import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class principle extends StatelessWidget{
  const principle({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
            height: 800,
            width: 300,
            child: Column(
              children: [
                SizedBox(height:200),
                Text("CORE PRINCIPLES",style: TextStyle(color: Colors.teal , fontWeight: FontWeight.w300),textDirection: TextDirection.ltr),
                SizedBox(height: 30,),
                Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/principle1.png'),

                ),
                Container(
                  child:Text("Zero Funds Organisation",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr)),
                     Text("We don't accept monetary funds",style: TextStyle(color: Colors.teal,),textDirection: TextDirection.ltr),

                SizedBox(height: 30,),
                Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/principle2.png')
                ),
                Container(
                    child:Text("Apolitical",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr)),
                Text("We are not a part of any political campaign",style: TextStyle(color: Colors.teal),textDirection: TextDirection.ltr),
                SizedBox(height: 30,),
                Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/principle3.png')
                ),
                Container(
                    child:Text("All religion inclusive",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr),),
                Text("Respect all religion",style: TextStyle(color: Colors.teal),textDirection: TextDirection.ltr ,)

              ],

            ),

      ),
    );
  }

}