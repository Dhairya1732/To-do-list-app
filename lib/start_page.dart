import 'package:flutter/material.dart';

class start_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 138, 138, 138),
      child: Column(
        children: [
          Text("Welcome",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 238, 191, 49))),
          Image.asset("assets/images/start_image.png"),
        ],
      ),
    );
  }
}
