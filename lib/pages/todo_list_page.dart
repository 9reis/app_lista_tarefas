import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          //padding: const EdgeInsets.only(left: 16, right:16),
          //padding: const EdgeInsets.symmetric(horizontal:10 // vertical:10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
                //onChanged: funcOnChanged,
                onSubmitted: funcOnSubmited, // Recebe uma func
              ),
              ElevatedButton(onPressed: login, child: Text('Entrar'))
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.text = '9reis';
  }

  void funcOnChanged(String text) {
    //print(text);
  }

  void funcOnSubmited(String text) {
    print(text);
  }
}
