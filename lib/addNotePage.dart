import 'package:flutter/material.dart';
import 'package:notes_app/SqlDatabase/dataBaseModel.dart';
import 'package:notes_app/homePage.dart';

class addNote extends StatefulWidget {
  Note? note ; int? index; bool newAddPage=false;
  addNote({  this.note ,  this.index , required this.newAddPage });

  @override
  State<addNote> createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {

  TextEditingController _headerController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();


@override
  void initState() {
    // TODO: implement initState
    if(!widget.newAddPage) {
    _headerController.text = widget.note!.title ;
    _descriptionController.text = widget.note!.content;}
  
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
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: TextField(
            controller: _headerController,
            onEditingComplete: () {
              
              if(widget.newAddPage){ 
                homeState().createEntry(Note(pin: false, title: _headerController.text.toString(), content: _descriptionController.text.toString() , createdTime: DateTime.now()));
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home(), )) ;
              }
              else{
               Note newNote = widget.note!;
               newNote.title =  _headerController.text; 
                homeState().updateOneNote(newNote);
                  print(newNote.title.toString());
                  }
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => home(),
                // ));
            },
            onSubmitted: (value) {
             
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home(), )) ;
              
            },
            
            textInputAction:  TextInputAction.go ,
            decoration:
                InputDecoration(hintText: "Title", border: InputBorder.none),
                 ),
         ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: _descriptionController,
            decoration: InputDecoration(hintText: "Description"),
              onEditingComplete: () {
              
              if(widget.newAddPage){ 
                homeState().createEntry(Note(pin: false, title: _headerController.text.toString(), content: _descriptionController.text.toString() , createdTime: DateTime.now()));
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home(), )) ;
              }
              else{
               Note newNote = widget.note!;
               newNote.title =  _headerController.text; 
                homeState().updateOneNote(newNote);
                  print(newNote.title.toString());
                  }
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => home(),
                // ));
            },
             onSubmitted: (value) {
              
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home(), )) ;
              
            },
           
          ),
        )
      ]),
    );
  }
}
