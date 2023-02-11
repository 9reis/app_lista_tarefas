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
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00D7F3),
                    //Colors.purple,
                    //fixedSize: Size(100, 200), tamanho fixo
                    padding: const EdgeInsets.all(17) // Padding no botão
                    // EdgeInsets.zero, Espaçamento minimo
                    ),
                child: Icon(Icons.add, size: 30),
                //Text(
                //  ' Enviar',
                //  style: TextStyle(fontSize: 40),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
