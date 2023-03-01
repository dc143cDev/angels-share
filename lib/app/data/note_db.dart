import 'package:angels_share/app/models/note.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//raw 메소드로 sql 쿼리 가능.

class NoteDB {
  static final NoteDB instance = NoteDB._init();

  static Database? _database;

  NoteDB._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('note.db');
    return _database!;
  }

  //기기 내부에 있는 db 가 존재한다면, 생성. 아니라면 오픈.
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    //id 테이블 타입. 프라이머리 키. 자동 생성.
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
    CREATE TABLE $tableNotes (
    ${NoteFields.id} $idType,
    ${NoteFields.isBeer} $boolType,
    ${NoteFields.title} $textType,
    ${NoteFields.content} $textType,
    ${NoteFields.noteColor} $textType,
    )
    ''');
  }

  //CRUD.

  //create.
  Future<Note> create(Note note) async {
    final db = await instance.database;

    // final id = await db.rawInsert(sql)

    final id = await db.insert(tableNotes, note.toJson());
    return note.copy(id: id);
  }

  //read, read all.
  Future<Note> readNote(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableNotes,
      columns: NoteFields.values,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Note>> readAllNotes() async {
    final db = await instance.database;

    final result = await db.query(tableNotes);

    return result.map((json) => Note.fromJson(json)).toList();
  }

  //update.
  Future<int> update(Note note) async {
    final db = await instance.database;

    return db.update(
      tableNotes,
      note.toJson(),
      where: '${NoteFields.id} = ?',
      whereArgs: [note.id],
    );
  }

  //delete.
  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableNotes,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );
  }

  //db 닫기.
  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
