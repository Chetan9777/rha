import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class drives extends StatelessWidget{
  const drives({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center,
            child: Text("Drives" , style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Container(
        color:Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            color: Colors.teal,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive1.png'),
                          ),
                        ),
                      ),
                    ),
                    const Center(child: Text("Blood donation\ncamp",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive2.png'),
                          ),
                        ),
                      ),
                    ),
                    const Center(child: Text("Grain drive",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive3.png'),
                          ),
                        ),
                      ),
                    ),
                    const Center(child: Text("Academy",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive4.png'),
                          ),
                        ),
                      ),
                    ),
                    const Center(child: Text("Unplanned food\ndrive",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive5.png'),
                          ),
                        ),
                      ),
                    ),
                    const Center(child: Text("Planned food\ndrive",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive6.png'),
                          ),
                        ),
                      ),
                    ),
                    Center(child: Text("Festival Drives",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive7.png'),
                          ),
                        ),
                      ),
                    ),
                    Center(child: Text("VIP Drives",style: TextStyle(color: Colors.white))),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:90,
                        width:80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/drive8.png'),
                          ),
                        ),
                      ),
                    ),
                    Center(child: Text("Suggest a NEW\ndrive concept",style: TextStyle(color: Colors.white))),
                  ],
                ),

              ],),
          ),
        ),
      ),
    );
  }

}
