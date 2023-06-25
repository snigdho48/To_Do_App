// create todo list model class with constructor
const String tableTodo = 'todo';
const String columnId = '_id';
const String columnTitle = 'title';
const String columnStatus = 'status';
const String columnDescription = 'description';

class Todo {
  String? title;
  String? description;
  int status = 0;
  int? id;

  Todo({
    this.title,
    this.description,
    this.status = 0,
    this.id,
  });
  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnTitle: title ?? '',
      columnStatus: status,
      columnDescription: description ?? '',
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Todo.fromMap(Map<String, dynamic> map) {
    id = map[columnId] as int?;
    title = map[columnTitle] as String?;
    status = map[columnStatus] as int;
    description = map[columnDescription] as String?;
  }
}
