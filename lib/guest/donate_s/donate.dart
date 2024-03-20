import 'package:flutter/material.dart';
import 'package:robinfinal/guest/donate_s/child_edu.dart';
import 'package:robinfinal/guest/donate_s/kits.dart';
import 'package:robinfinal/guest/donate_s/food.dart';
import 'package:robinfinal/guest/donate_s/clothes.dart';

class donate extends StatelessWidget {
  final List<ProfileData> profiles = [
    ProfileData(
      name: 'Food',
      imageAsset: 'assets/images/food.png',
      imageHeight: 60.0, // Customize image size for the first card
    ),
    ProfileData(
      name: 'Clothes',
      imageAsset: 'assets/images/clothes.png',
      imageHeight: 60.0, // Customize image size for the second card
    ),
    ProfileData(
      name: 'Kits',
      imageAsset: 'assets/images/kits.png',
      imageHeight: 50.0, // Customize image size for the third card
    ),
    ProfileData(
      name: 'A child education',
      imageAsset: 'assets/images/child_edu.png',
      imageHeight: 60.0, // Customize image size for the fourth card
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate', style: TextStyle(color: Colors.teal),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            itemCount: profiles.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.0), // Add spacing between cards
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  navigateToProfileDetail(context, index);
                },
                child: ItemCard(
                  name: profiles[index].name,
                  imageAsset: profiles[index].imageAsset,
                  imageHeight: profiles[index].imageHeight,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void navigateToProfileDetail(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => food()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => ClothesForm()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => kits()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => child_edu()));
        break;
      default:
        break;
    }
  }
}

class ItemCard extends StatelessWidget {
  final String name;
  final String imageAsset;
  final double imageHeight;

  ItemCard({required this.name, required this.imageAsset, required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              imageAsset,
              fit: BoxFit.cover,
              height: imageHeight, // Customize image size for each card
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileData {
  final String name;
  final String imageAsset;
  final double imageHeight;

  ProfileData({
    required this.name,
    required this.imageAsset,
    required this.imageHeight,
  });
}

// class ProfileDetailPage extends StatelessWidget {
//   final String name;
//   final String imageAsset;
//   final double imageHeight;
//
//   ProfileDetailPage({required this.name, required this.imageAsset, required this.imageHeight});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               imageAsset,
//               fit: BoxFit.cover,
//               height: imageHeight,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 name,
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // Add additional content or data for each profile detail page
//           ],
//         ),
//       ),
//     );
//   }
// }