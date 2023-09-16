import 'package:flutter/material.dart';
import 'home_page.dart';
import 'start_page.dart';

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
