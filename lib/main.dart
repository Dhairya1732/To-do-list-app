import 'package:flutter/material.dart';

void main() {
  runApp(const FocusList());
}

class FocusList extends StatelessWidget {
  const FocusList({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      initialRoute: "/start",
      routes: {
        '/start': (context) => const start_page(),
        '/home': (context) => const home_page(),
      },
    );
  }
}

class start_page extends StatelessWidget {
  const start_page({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 223, 223),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text("FocusList",
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 238, 191, 49))),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/start_image.png",
              scale: 0.8,
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text("Welcome to FocusList",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                  "FocusList will help you to stay\n  organized and perform your\n          tasks much faster.",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 0, 0, 0))),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  child: const Text(
                    "Get Started",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const home_page()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 228, 140, 33)),
                )),
          ],
        ),
      ),
    );
  }
}

class home_page extends StatelessWidget {
  const home_page({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 223, 223, 223),
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.menu,
            size: 40,
          ),
          CircleAvatar(
            child: Image.asset(
              "assets/images/start_image.png",
            ),
          ),
        ]),
      ]),
    );
  }
}
