import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final handleToDoChange;
  final onDelete;

  const TodoItem({
    super.key,
    required this.todo,
    required this.handleToDoChange,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: () {
          print("checked !!");
          handleToDoChange(todo);
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: todo.isDone
            ? Icon(
                Icons.check_box,
                color: tdBlue,
              )
            : Icon(
                Icons.check_box_outline_blank,
                color: tdBlue,
              ),
        title: Text(
          todo.title,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              print("pressed");
              onDelete(todo);
            },
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
