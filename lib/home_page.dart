import 'package:flutter/material.dart';
import 'widgets/quote_card.dart';
import 'widgets/categories.dart';
import 'widgets/to_do_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        key: _scaffoldKey,
        body: Column(
          children: [
            const SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: const Icon(Icons.menu),
                  iconSize: 44,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: CircleAvatar(
                  foregroundImage:
                      AssetImage("assets/images/profile_image.jpeg"),
                  radius: 20,
                ),
              ),
            ]),
            const SizedBox(height: 10),
            const QuoteCard(),
            const SizedBox(height: 30),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Categories(),
            Expanded(
              child: ListView(
                children: const [
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 222, 149, 35),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(child: ListView()),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 222, 149, 35),
          selectedItemColor: const Color.fromARGB(255, 238, 216, 23),
          unselectedItemColor: const Color.fromARGB(255, 240, 240, 240),
          selectedFontSize: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 40,
                ),
                label: "Settings"),
          ],
        ),
      ),
    );
  }
}
