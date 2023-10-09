import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:notes_app/SqlDatabase/dataBaseModel.dart';

class DatabaseHelperclass { 

 static  DatabaseHelperclass helperclassiInstance  =  DatabaseHelperclass._init();
  static  Database? _database ;

   DatabaseHelperclass._init();


Future<Database?> get database async { 
  if(_database != null) return _database;

   _database =  await _initializedb('Notes.db');
   return _database;
}

Future<Database?> _initializedb(String pathfile) async { 
  final dbpath = await getDatabasesPath();
  final path = join(dbpath,pathfile);
  return await openDatabase(path,version: 1 , onCreate: _oncreate());
}

Future _oncreate(Database db , int version ) async{ 

  String idtype = 'INTEGER PRIMARY KEY AUTOINCREMENT' ;


  await db.execute(''' CREATE TABLE Notes ( 
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        pin bool NOT NULL ,
        title TEXT NOT NULL ,
        content TEXT NOT NULL ,
        createdTime TEXT NOT NULL
  ) ''');
}

Future<Note?> insertEntry(Note note) async { 
 
  final db = await _database;
  final id =await db!.insert(NotesImpNames.TableName , note.toJson() ) ;

  return note.copy(id:id);
}


Future readAllNotes(Note note) async { 
  final  orderby = "${NotesImpNames.createdTime} asc"
 await _database.query(NotesImpNames.TableName , orderBy: ) 
}


}