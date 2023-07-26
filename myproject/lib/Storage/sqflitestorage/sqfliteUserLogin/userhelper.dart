import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
class USRHelper{

static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        email TEXT,
        password TEXT
        
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> openDb() async {
    return sql.openDatabase(
      'datauser.db',
      version: 1,
      onCreate: (sql.Database db, int version) async {
        await createTables(db);
      },
    );
  }
static Future<int> AddNewUser(String name, String email, String password) async {
       final db = await USRHelper.openDb();
       final data = {'name': name,'email': email,'password':password};
       final id = db.insert('user', data);
       return id;
  }
  static Future<List<Map>> CheckLogin(String email, String password) async {
    final db = await USRHelper.openDb();
    final data = await db.rawQuery(
      "SELECT * FROM user WHERE email= '$email' ND password='$password'"
    );
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<List<Map>> userFound(String uemail) async {
    final db = await USRHelper.openDb();
    final data = await db.rawQuery(
      "SELECT * FROM user WHERE email= '$uemail'"
    );
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }



  
}