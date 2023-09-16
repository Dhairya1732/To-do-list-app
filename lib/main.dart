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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 225, 225, 225)),
        useMaterial3: true,
      ),
      initialRoute: "/start",
      routes: {
        '/start': (context) => const StartPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 225, 225),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text("FocusList",
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 238, 191, 49))),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/start_image.png",
              scale: 0.8,
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text("Welcome to FocusList",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                  "FocusList will help you to stay\n  organized and perform your\n          tasks much faster.",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 0, 0, 0))),
            ),
            const SizedBox(
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
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 228, 140, 33)),
                )),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 225, 225, 225),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(
              Icons.menu,
              size: 40,
            ),
            CircleAvatar(
              child: Image.asset(
                "assets/images/start_image.png",
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Color.fromARGB(255, 255, 172, 7),
            child: ListTile(
              trailing: Icon(
                Icons.tab_sharp,
                size: 50,
              ),
              leading: Text(
                'Manage your \n'
                'time well',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
