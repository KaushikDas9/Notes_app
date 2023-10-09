

import 'package:flutter/material.dart';

class addNote extends StatefulWidget {
  const addNote({super.key});

  @override
  State<addNote> createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(actions: [IconButton(onPressed:  (){} , icon:const Icon(Icons.push_pin_outlined)),IconButton(onPressed:  (){} , icon: Icon(Icons.notification_add_outlined)) ,IconButton(onPressed:  (){} , icon: Icon(Icons.archive_outlined)) ]),
    body:Column(children:[ const TextField(decoration:InputDecoration( hintText: "Title" , border: InputBorder.none ),) ,TextField(decoration: InputDecoration(hintText: "Description"),) ]),
    );
  }
}