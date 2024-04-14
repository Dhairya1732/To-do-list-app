import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: const Color.fromARGB(255, 247, 184, 85),
        leading: const Icon(Icons.check_box),
        title: const Text(
          "Check Emails",
          style: TextStyle(
              color: Colors.white, decoration: TextDecoration.lineThrough),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cancel),
          color: Colors.red,
        ),
      ),
    );
  }
}
