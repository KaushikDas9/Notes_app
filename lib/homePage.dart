import 'package:flutter/material.dart';
import 'package:notes_app/CustomDrawer.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const myCustomDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: myCustomSearchBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myCustomSearchBox( ) {
    double height = MediaQuery.of(context).size.height;
    double widght = MediaQuery.of(context).size.width;

    return TextField(
      controller: searchController,
      onEditingComplete: () {
        print(searchController.text.toString());
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          prefixIcon: IconButton(
              onPressed: () {
                _drawerKey.currentState!.openDrawer();
                print("menu");
              },
              icon: Icon(Icons.menu)),
          suffixIcon: Container(
            // color: Colors.black,
            width: widght * .28,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      
                      print("grid");
                    },
                    icon: Icon(Icons.grid_view)),
                SizedBox(
                  width: widght * .025,
                ),
                InkWell(
                  child: CircleAvatar(),
                  onTap: () {
                    print("circuler avater");
                  },
                )
              ],
            ),
          )),
    );
  }

 
}
