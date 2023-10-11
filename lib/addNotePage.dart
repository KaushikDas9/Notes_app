import 'package:flutter/material.dart';
import 'package:notes_app/SqlDatabase/dataBaseModel.dart';
import 'package:notes_app/homePage.dart';

class addNote extends StatefulWidget {
  Note note ; int index;
  addNote({ required this.note , required this.index });

  @override
  State<addNote> createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {

  TextEditingController _headerController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();


@override
  void initState() {
    // TODO: implement initState
    _headerController.text = widget.note.title ;
    _descriptionController.text = widget.note.content;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.push_pin_outlined)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.notification_add_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.archive_outlined))
      ]),
      body: Column(children: [
         TextField(
          onEditingComplete: () {
            setState(() {
              homeState().updateOneNote(widget.note);
            });
            
          },
          controller: _headerController,
          decoration:
              InputDecoration(hintText: "Title", border: InputBorder.none),
        ),
        TextField(
          controller: _descriptionController,
          decoration: InputDecoration(hintText: "Description"),
        )
      ]),
    );
  }
}
