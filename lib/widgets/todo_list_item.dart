import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      padding: EdgeInsets.all(16),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text("data - hora",
            style: TextStyle(
              fontSize: 12,
            )),
        Text("tarefa",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ]),
    );
  }
}
