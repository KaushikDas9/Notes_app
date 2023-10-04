import 'package:flutter/material.dart';

class myCustomDrawer extends StatefulWidget {
  const myCustomDrawer({super.key});

  @override
  State<myCustomDrawer> createState() => _myCustomDrawerState();
}

class _myCustomDrawerState extends State<myCustomDrawer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
          color: Colors.black45,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: height * .05,
                  
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: const Text(
                    "Google Keep",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  // color: Colors.white,
                  width:width ,alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 8,top: 25),
                  // height: height * .875,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Notes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Reminders",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Create new label",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Archive",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Trash",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                       Row(
                        children: [
                          IconButton(onPressed: () {} , icon: Icon(Icons.lightbulb, color: Colors.white,)),
                          Text("Help & feedback",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
