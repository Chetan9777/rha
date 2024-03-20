import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:robinfinal/guest/donate_s/food_form.dart';

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food', style: TextStyle(color: Colors.teal),),
      ),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClickableCard(
                  title: 'NOW',
                  description: 'Meal should be good and properly packed',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => foodForm()),);
                  },
                ),
                ClickableCard(
                  title: '#EXTENDED GUEST LIST',
                  description: 'Be a kind stranger and let new people be a part of your special occasion',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage("FOOD CRAD")));

                  },
                ),
              ],
            ),
          ),
        );
  }
}

class ClickableCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  ClickableCard({required this.title, required this.description, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.teal ),
                ),
              ),
              SizedBox(height: 5),
              Align(
                  alignment: Alignment.center,
                  child: Text(description,style: TextStyle(color: Colors.teal,fontSize: 12),)),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String details;

  DetailsPage(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Text(details),
      ),
    );
  }
}