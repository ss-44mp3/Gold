import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  DatabaseService._();
  static final instance = DatabaseService._();
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    final databasePath = join(await getDatabasesPath(), 'gold_miner.db');
    _database = await openDatabase(databasePath, version: 1, onCreate: (db, _) async {
      await db.execute('CREATE TABLE Sites (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, latitude REAL, longitude REAL, notes TEXT, created_at TEXT NOT NULL)');
      await db.execute('CREATE TABLE Tracks (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, started_at TEXT, ended_at TEXT)');
      await db.execute('CREATE TABLE TrackPoints (id INTEGER PRIMARY KEY AUTOINCREMENT, track_id INTEGER NOT NULL, latitude REAL NOT NULL, longitude REAL NOT NULL, recorded_at TEXT NOT NULL, FOREIGN KEY(track_id) REFERENCES Tracks(id) ON DELETE CASCADE)');
      await db.execute('CREATE TABLE LayersSettings (id INTEGER PRIMARY KEY CHECK (id = 1), satellite INTEGER NOT NULL DEFAULT 0, topographic INTEGER NOT NULL DEFAULT 1, water INTEGER NOT NULL DEFAULT 1)');
      await db.execute("CREATE TABLE AppSettings (id INTEGER PRIMARY KEY CHECK (id = 1), dark_mode INTEGER NOT NULL DEFAULT 0, distance_unit TEXT NOT NULL DEFAULT 'km')");
    });
    return _database!;
  }
}