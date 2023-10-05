import 'package:flutter/material.dart';

class myCustomDrawer extends StatefulWidget {
  const myCustomDrawer({super.key});

  @override
  State<myCustomDrawer> createState() => _myCustomDrawerState();
}

class _myCustomDrawerState extends State<myCustomDrawer> {

  bool sectionOneEffect=false;bool sectionTwoEffect=false;bool sectionThreeEffect=false;bool sectionFourEffect=false;bool sectionFiveEffect=false;bool sectionSixEffect=false;bool sectionSevenEffect=false;  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
          color: Colors.black54,
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
                Divider(),
                Container(
                  // color: Colors.white,
                  width: width, alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 0, top: 5),
                  // height: height * .875,
                  child: Column(
                    children: [


                    
                       
                         Container(
                          // color: Color.fromARGB(255, 159, 25, 25),
                          // width: width,
                          margin: EdgeInsets.only(right: 20),
                          child: TextButton(

                            style:sectionOneEffect ? sectionButtonStyle() : null ,
                            onPressed: (){ setState(() {
                              sectionOneEffect=true;
                              sectionTwoEffect=false;
                              sectionThreeEffect=false;
                              sectionFourEffect=false;
                              sectionFiveEffect=false;
                              sectionSixEffect=false;
                              sectionSevenEffect=false;
                            }); }  ,
                            child: const Row(
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon:  Icon(
                                      Icons.lightbulb,
                                      color: Colors.white,
                                    )),
                                Text(
                                  "Notes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      
                      sectiontwo(),  

                      
                    
                      Divider(),
                      sectionthree(), 
                      
                      Divider(),
                     sectionfour(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lightbulb,
                                color: Colors.white,
                              )),
                          Text(
                            "Trash",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lightbulb,
                                color: Colors.white,
                              )),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lightbulb,
                                color: Colors.white,
                              )),
                          Text(
                            "Help & feedback",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
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

  ButtonStyle sectionButtonStyle() { 
    return ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange.withOpacity(.8)) ,shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), topRight: Radius.circular(50)))) ) ;
  }
 Widget sectiontwo() { 
  return  Container(
                          // color: Color.fromARGB(255, 159, 25, 25),
                          // width: width,
                          margin: EdgeInsets.only(right: 20),
                          child: TextButton(

                            style:sectionTwoEffect ? sectionButtonStyle() : null ,
                            onPressed: (){ setState(() {
                              sectionOneEffect=false;
                              sectionTwoEffect=true;
                              sectionThreeEffect=false;
                              sectionFourEffect=false;
                              sectionFiveEffect=false;
                              sectionSixEffect=false;
                              sectionSevenEffect=false;
                            }); }  ,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                    )),
                                const Text(
                                  "Reminders",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
 } 

Widget sectionthree() { 
  return  Container(
                          // color: Color.fromARGB(255, 159, 25, 25),
                          // width: width,
                          margin: EdgeInsets.only(right: 20),
                          child: TextButton(

                            style:sectionThreeEffect ? sectionButtonStyle() : null ,
                            onPressed: (){ setState(() {
                              sectionOneEffect=false;
                              sectionTwoEffect=false;
                              sectionThreeEffect=true;
                              sectionFourEffect=false;
                              sectionFiveEffect=false;
                              sectionSixEffect=false;
                              sectionSevenEffect=false;
                            }); }  ,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                const Text(
                                  "Create new Label",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
 } 

Widget sectionfour() { 
  return  Container(
                          // color: Color.fromARGB(255, 159, 25, 25),
                          // width: width,
                          margin: EdgeInsets.only(right: 20),
                          child: TextButton(

                            style:sectionFourEffect ? sectionButtonStyle() : null ,
                            onPressed: (){ setState(() {
                              sectionOneEffect=false;
                              sectionTwoEffect=false;
                              sectionThreeEffect=false;
                              sectionFourEffect=true;
                              sectionFiveEffect=false;
                              sectionSixEffect=false;
                              sectionSevenEffect=false;
                            }); }  ,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.archive,
                                      color: Colors.white,
                                    )),
                                const Text(
                                  "Archive",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
 } 

}
