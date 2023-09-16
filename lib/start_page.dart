import 'package:flutter/material.dart';
import 'home_page.dart';

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
            const SizedBox(height: 100),
            const Center(
              child: Text("FocusList",
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 238, 191, 49))),
            ),
            const SizedBox(height: 20),
            Image.asset("assets/images/start_image.png", scale: 0.8),
            const SizedBox(height: 50),
            const Center(
              child: Text("Welcome to FocusList",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 228, 140, 33)),
                child: const Text(
                  "Get Started",
                  style: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
