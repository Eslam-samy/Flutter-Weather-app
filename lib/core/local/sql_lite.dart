import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'constants.dart';

class SqliteService {
  static Future<Database> initializeDB() async {
    try {
      String path = await getDatabasesPath();
      Future<Database> db = openDatabase(
        join(path, sqlLiteName),
        onCreate: (database, version) async {
          await database.execute('''
            CREATE TABLE $weatherTableName (
              timelines TEXT
            )
          ''');
        },
        version: sqlLiteVersion,
      );
      print("SuccessXXXXXXXX");
      return db;
    } catch (e) {
      print("ErrorXXXXXXXXXXXX: $e");
      rethrow; // Rethrow the exception to propagate it further
    }
  }
}
