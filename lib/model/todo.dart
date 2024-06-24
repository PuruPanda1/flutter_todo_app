class ToDo {
  String id;
  String title;
  bool isDone;

  ToDo({required this.id, required this.title, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: "1", title: "Wash your clothes", isDone: true),
      ToDo(id: "2", title: "Complete Assignment"),
      ToDo(id: "3", title: "go to College", isDone: true),
      ToDo(id: "4", title: "Have Baby"),
    ];
  }
}
