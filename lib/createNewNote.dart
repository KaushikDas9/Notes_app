import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/SqlDatabase/dataBaseModel.dart';
import 'package:notes_app/homePage.dart';

class craateNew extends StatefulWidget {
  const craateNew({super.key});

  @override
  State<craateNew> createState() => _craateNewState();
}

class _craateNewState extends State<craateNew> {

  TextEditingController _headerController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SafeArea(
      child: Column(children: [
           TextField(
            controller: _headerController,
            onEditingComplete: () {
              
             homeState().createEntry(Note(pin: false, title: _headerController.text, content: "", createdTime: DateTime.now()));
            },
            
           
            decoration:
                InputDecoration(hintText: "Title", border: InputBorder.none),
          ),
          TextField(
            controller: _descriptionController,
            onEditingComplete: () {
              
             homeState().createEntry(Note(pin: false, title: _headerController.text, content: _descriptionController.text , createdTime: DateTime.now()));
            },
            onSubmitted: (value) {
             
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home(), )) ;
              
            },
             textInputAction:  TextInputAction.go ,
            decoration: InputDecoration(hintText: "Description"),
          )
        ]),
    ),);
  }
}