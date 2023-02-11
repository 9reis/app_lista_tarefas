import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adicione uma tarefa",
                      hintText: "ex: Estudar flutter"),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(' + '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
