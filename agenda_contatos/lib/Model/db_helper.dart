
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static Future<Database> openConnection() async{
    var path = await getDatabasesPath();
    var dbName = 'parking_database.db';
    var dbPath = '$path$dbName';
    return await openDatabase(
      dbPath,
      version:1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE contatos( id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT(20) NOT NULL, sobrenome TEXT(30) NOT NULL, email VARCHAR(50) NOT NULL, fone TEXT(12) NOT NULL, foto TEXT)'
        ); 
      },
    );
  }
}