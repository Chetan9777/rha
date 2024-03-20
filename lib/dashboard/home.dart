import 'package:flutter/material.dart';
import 'package:robinfinal/drives.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>drives()));
            },
            child: Text("Robin Hood Army", style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}
