import 'package:sqflite/sqflite.dart';

import '../models/todo_model.dart';

class DbQuery {
  late Database db;
  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    await open('$databasesPath/todo.db');
  }

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
              create table $tableTodo ( 
                $columnId integer primary key autoincrement, 
                $columnTitle text not null,
                $columnDescription integer not null,
                $columnStatus integer not null,)''');
    });
  }

  Future<Todo> insert(Todo todo) async {
    todo.id = await db.insert(tableTodo, todo.toMap());
    return todo;
  }

  Future<Todo?> getTodo(int id) async {
    List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDescription, columnTitle, columnStatus],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Todo.fromMap(maps.first as Map<String, dynamic>);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Todo todo) async {
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  Future close() async => db.close();
// Delete the database
}
