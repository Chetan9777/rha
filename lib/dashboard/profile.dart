import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:robinfinal/auth/LoginPage.dart';
import 'package:robinfinal/auth/service/auth_service.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400), ),
        backgroundColor: Colors.teal,
        actions: [
          // Add a logout button
          IconButton(
            icon: Icon(Icons.logout_outlined,color: Colors.teal,),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              Fluttertoast.showToast(msg: "User is successfully signed out !");
              FirebaseService.handlesignOut();
            },
          ),
        ],),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/pro.jpg'),
                ),
                SizedBox(height: 20),
                ProfileTextField(label: 'Name', value: 'John Doe'),
                ProfileTextField(label: 'Address', value: '123 Main St, City, Country'),
                ProfileTextField(label: 'Phone', value: '+1234567890'),
                ProfileTextField(label: 'Email', value: 'john.doe@example.com'),
                Row(
                  children: [
                    Expanded(child: ProfileTextField(label: 'Age', value: '30')),
                    SizedBox(width: 20,),
                    Expanded(child: ProfileTextField(label: 'Area Pincode', value: '123456')),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileTextField({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          // labelText: label,
          hintText: value,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

