import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  static final LocalDatabase instance = LocalDatabase._init();
  static Database? _database;
  LocalDatabase._init();
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    // const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    // const textType = 'TEXT NOT NULL';
    // const boolType = 'BOOLEAN NOT NULL';
    // const integerType = 'INTEGER NOT NULL';

//     await db.execute('''
// CREATE TABLE $tableNoconst
//   ${NoteFields.id} $idType,
//   ${NoteFields.isImportant} $boolType,
//   ${NoteFields.number} $integerType,
//   ${NoteFields.title} $textType,
//   ${NoteFields.description} $textType,
//   ${NoteFields.time} $textType
//   )
// ''');
  }
}
