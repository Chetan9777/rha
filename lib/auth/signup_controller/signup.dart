import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:robinfinal/dashboard/dashboard.dart';
import 'package:robinfinal/auth/signup_controller/signup_controller.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController nameController = TextEditingController();
  TextEditingController  mobileController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController  areaController = TextEditingController();
  TextEditingController  pincodeController = TextEditingController();
  TextEditingController  ageController = TextEditingController();
  TextEditingController  professionController = TextEditingController();
  TextEditingController  reasonController = TextEditingController();

  addData(String name, String mobno, String email, String area, String pincode, String age, String profession, String reason)
   async{
    FirebaseFirestore.instance.collection("Robins").doc(nameController.text).set(
        {
          "name": name,
          "mobile No.": mobno,
          "email": email,
          "area": area,
          "pincode": pincode,
          "age": age,
          "profession": profession,
          "reason": reason,
        }
    ).then((value) => log("Registered successfully"));
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Registration",style: TextStyle(color: Colors.teal),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            // key: controller.signupFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildTextField("Name", TextInputType.text,
                    controller: nameController),
                _buildTextField("Mobile No.", TextInputType.phone,
                    controller: mobileController),
                _buildTextField("Email Address", TextInputType.emailAddress,
                    controller: emailController),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: _buildTextField("Area", TextInputType.text,
                          controller: areaController),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: _buildTextField("Pincode", TextInputType.number,
                          controller: pincodeController),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: _buildTextField("Age", TextInputType.number,
                          controller: ageController),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: _buildTextField("Profession", TextInputType.text,
                          controller: professionController),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                _buildTextField("Why are you joining RHA?", TextInputType.multiline,
                    controller: reasonController, maxline: 3),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.teal,
                  ),
                  height: 50,
                  width: 240,
                  child: ElevatedButton(
                    onPressed: (){
                      addData(nameController.text.toString(),
                        mobileController.text.toString(),
                        emailController.text.toString(),
                        areaController.text.toString(),
                        pincodeController.text.toString(),
                        ageController.text.toString(),
                        professionController.text.toString(),
                        reasonController.text.toString(),);
                      dashboard();
                    },
                    child: Text("Submit"),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextInputType keyboardType,
      {int maxline = 1, TextEditingController? controller}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxline,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          labelText: label,
          labelStyle: TextStyle(
              color: Colors.teal, // Faded teal color for the hint text
              fontSize: 14),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          filled: true,
          fillColor: Colors.teal[50], // Faint teal background color
        ),
        style: TextStyle(color: Colors.teal),
        validator: (value) {
          if (value == null || value.isEmpty) {
             return 'Please enter some text';
          }
        return null;// Text color (teal dark)
    }
      )
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid, proceed with your logic
      // For example, navigate to the next screen
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => dashboard()));
    }
  }
}



