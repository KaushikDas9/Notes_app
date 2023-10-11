import 'package:flutter/material.dart';
import 'package:notes_app/CustomDrawer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app/SqlDatabase/databaseHelper.dart';
import 'package:notes_app/addNotePage.dart';
import 'package:notes_app/SqlDatabase/dataBaseModel.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  late List<Note> listnode=[];
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();



 @override
  void initState() {
    // TODO: implement initState
   createEntry(Note(pin: false, title: "ja kushi", content: "content err rki debo " , createdTime: DateTime.now()));
   getAllNotes();
  }
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    DatabaseHelperclass.instance.closedb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * .4,
      key: _drawerKey,
      drawer: const myCustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
        
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: myCustomSearchBox(),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25,top:10),
                child: Text("All"),
              ),
              myCustomGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myCustomSearchBox() {
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

  Widget myCustomGrid() {
    return Container(
      // color:  Colors.black,
      // height: MediaQuery.of(context).size.height * .845,
      child: MasonryGridView.count(
        padding: EdgeInsets.all(5),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemCount: listnode.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => addNote(),));
            },
            child: Container(
              margin:const EdgeInsets.all(5),
              padding:const EdgeInsets.all(15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: .05,color: Colors.black87 ) ),
              child:Column(crossAxisAlignment: CrossAxisAlignment.start, children: [ Text(listnode[index].title , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)) ,Text(listnode[index].content) 
            ])),
          );
        },
      ),
    );
  }

Future createEntry(Note note) async{
  await DatabaseHelperclass.instance.insertEntry(note);
}

Future getAllNotes() async{
  this.listnode =  await DatabaseHelperclass.instance.readAllNotes();
print(listnode[0].toString());
  setState(() {
    // isLoading = false;
  });
}

Future getOneNote(int id) async{
  await DatabaseHelperclass.instance.readOneNote(id);
  
}

Future updateOneNote(Note note) async{
  await DatabaseHelperclass.instance.update(note);

}

Future deleteNote(Note note) async{
  await DatabaseHelperclass.instance.deleteNode(note);
}

}

