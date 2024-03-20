import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:robinfinal/guest/donate_s/donate.dart';

class guest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest', style: TextStyle(color: Colors.teal),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOW WOULD YOU LIKE TO HELP?",style: TextStyle(color: Colors.teal, fontSize: 18),),
            SizedBox(height: 20,),
            ClickableCard(
              title: 'Do good deeds',
              description: 'make help reach the neady',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage("Card 1 Details")),);
              },
            ),
            ClickableCard(
              title: 'DONATE',
              description: 'Food/clothes/gift of education',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => donate()));
              },
            ),
            ClickableCard(
              title: 'Special day?',
              description: 'Celebrate with us!',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage("Card 3 Details")),);
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
