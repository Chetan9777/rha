import 'package:flutter/material.dart';
import 'package:robinfinal/dashboard/home.dart';
import 'package:robinfinal/dashboard/Calender.dart';
import 'package:robinfinal/dashboard/profile.dart';
import 'package:robinfinal/dashboard/notication.dart';


class dashboard extends StatelessWidget {
  const dashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robin Hood Army',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index=0;
  final screens=[
    home(),
    Calendar(),
    // SizedBox(width: 3,),
    notification(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.backpack),
      //   // title: Text("Robin Hood Army"),
      //   backgroundColor: Colors.teal.shade700,
      // ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.teal.shade100,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),
        child: NavigationBar(
          backgroundColor: Colors.teal.shade50,
          height: 55,
          selectedIndex: index,
          animationDuration: Duration(milliseconds: 500),
          onDestinationSelected: (index)=>{
            setState(()=> this.index = index)
          },
          destinations: [
            NavigationDestination(icon: InkWell(
              child: Container(
                  height: 25,
                  width: 25,
                  child: Image.asset("assets/images/search.png")),
            ), label: ""),
            NavigationDestination(icon: InkWell(
              child: Container(
                  height: 25,
                  width: 25,
                  child:Image.asset("assets/images/calendar.png")
              ),
            ), label: ""),
            // SizedBox(width: 3,),
            NavigationDestination(icon: InkWell(
              child: Container(
                  height: 25,
                  width: 25,
                  child:Image.asset("assets/images/notification.png")
              ),
            ), label: ""),
            NavigationDestination(icon: InkWell(
              child: Container(
                  height: 25,
                  width: 25,
                  child:Image.asset("assets/images/profile.png")
              ),
            ), label: ""),

          ],
        ),
      ),
      // floatingActionButton: InkWell(
      //   onTap: () {
      //     // Handle the tap on the centered heart FAB symbol.
      //   },
      //   child: Ink(
      //     decoration: const ShapeDecoration(
      //       color: Colors.teal,
      //       shape: CircleBorder(),
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: InkWell(
      //         onTap: (){
      //
      //         },
      //         child: Container(
      //             height: 70,
      //             width: 70,
      //             child: Image.asset('assets/images/heart_plus.png')),
      //       ), // Replace with the actual heart icon image asset path
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
      // // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class CustomFABLocation extends FloatingActionButtonLocation {
//   final double x;
//   final double y;
//
//   CustomFABLocation(this.x, this.y);
//
//   @override
//   Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
//     return Offset(x, y);
//   }
// }
