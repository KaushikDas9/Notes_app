
import 'package:flutter/material.dart';

class myCustomDrawer extends StatefulWidget {
  const myCustomDrawer({super.key});

  @override
  State<myCustomDrawer> createState() => _myCustomDrawerState();
}

class _myCustomDrawerState extends State<myCustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container( color: Colors.black,),

    );
  }
}