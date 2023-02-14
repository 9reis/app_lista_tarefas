import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({super.key, required this.title});

  final String title;

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
        Text("data - hora",
            style: TextStyle(
              fontSize: 12,
            )),
        Text(title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ]),
    );
  }
}
