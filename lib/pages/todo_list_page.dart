import 'package:app_lista_tarefas/models/todo.dart';
import 'package:flutter/material.dart';

import '../widgets/todo_list_item.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController todoController = TextEditingController();

  List<Todo> todos = [];
  Todo? deletedTodo;
  int? deletedTodoPos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Adicione uma tarefa",
                            hintText: "ex: Estudar flutter"),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        String text = todoController.text;
                        setState(() {
                          Todo newTodo = Todo(
                            title: text,
                            dateTime: DateTime.now(),
                          );
                          todos.add(newTodo);
                        });
                        todoController.clear();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF00D7F3),
                          padding: const EdgeInsets.all(17)),
                      child: Icon(Icons.add, size: 30),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (Todo todo in todos)
                        TodoListItem(
                          todo: todo,
                          onDelete: onDelete,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child:
                          Text("Voce possui ${todos.length} tarefas pendentes"),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF00D7F3),
                          padding: const EdgeInsets.all(17)),
                      child: Text("Limpar tudo"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onDelete(Todo todo) {
    deletedTodo = todo;
    deletedTodoPos = todos.indexOf(todo);

    setState(() {
      todos.remove(todo);
    });

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Tarefa ${todo.title} foi removida com sucesso!',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        action: SnackBarAction(
          label: 'Desfazer',
          textColor: const Color(0xFF00D7F3),
          onPressed: (() {
            setState(() {
              todos.insert(deletedTodoPos!, deletedTodo!);
            });
          }),
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
