import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          //padding: const EdgeInsets.only(left: 16, right:16),
          //padding: const EdgeInsets.symmetric(horizontal:10 // vertical:10),
          child: TextField(
            decoration: InputDecoration(
              labelText: "E-mail",
              hintText: "teste@teste.com", // Igual ao Placeholder
              border: OutlineInputBorder(), //InputBorder.none
              errorText: "Campo obrigatório",
              prefixText: 'R\$ ',
              labelStyle: TextStyle(
                fontSize: 20,
              ),
            ),
            obscureText: true, //Oculta os caracters
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
