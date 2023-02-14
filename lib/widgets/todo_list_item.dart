import 'package:app_lista_tarefas/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(DateFormat('dd/MM/yyy - HH:mm').format(todo.dateTime),
            style: TextStyle(
              fontSize: 12,
            )),
        Text(todo.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ]),
    );
  }
}
