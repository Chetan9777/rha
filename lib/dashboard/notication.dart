import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back,color: Colors.teal,),
        title: Text("Notification",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Text('notification Content'),
      ),
    );
  }
}
