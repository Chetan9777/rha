import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:robinfinal/dashboard/dashboard.dart';
import 'package:robinfinal/guest/donate_s/thank_you.dart';

class ClothesForm extends StatefulWidget {
  @override
  State<ClothesForm> createState() => _ClothesFormState();
}

class _ClothesFormState extends State<ClothesForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothes Donation', style: TextStyle(color: Colors.teal)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildTextField("Name", TextInputType.text),
                _buildTextField("Mobile No.", TextInputType.phone),
                _buildTextField("Email ID", TextInputType.emailAddress),
                _buildTextField("Pick Up address", TextInputType.text),
                _buildTextField("Drop address", TextInputType.text),
                _buildTextField("Quantity (No. of people)", TextInputType.number),
                SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      checkColor: Colors.white,
                      activeColor: Colors.teal,
                      tristate: false,
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Text(
                        "Avoid giving used or worn-out clothes.",
                        style: TextStyle(color: Colors.teal, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.teal,
                  ),
                  height: 50,
                  width: 240,
                  child: TextButton(
                    onPressed: () {
                      _submitForm();
                    },
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                  ),
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
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.teal, // Faded teal color for the hint text
            fontSize: 14,
          ),
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
        style: TextStyle(color: Colors.teal), // Text color (teal dark)
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid, proceed with your logic
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => thank_u()),
      );
    }
  }
}

