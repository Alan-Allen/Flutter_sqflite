import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class userList {
  final String id;
  final String name;
  final String user;
  final String password;

  userList({required this.id, required this.name, required this.user, required this.password});
}

class userDB {
  static late Database database;

  static Future<Database> getDBConnect() async {
    if (database != null) {
      return database;
    }
    return await initDatabase();
  }

  static Future<Database> initDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'todo.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE todos(id TEXT PRIMARY KEY, name TEXT, user TEXT, password TEXT)",
        );
      },
      version: 1,
    );
    return database;
  }
}