import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Adicione uma tarefa",
                          hintText: "ex: Estudar flutter"),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF00D7F3),
                        padding: const EdgeInsets.all(17)),
                    child: Icon(Icons.add, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text("Voce possui 0 tarefas pendentes"),
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
    );
  }
}
