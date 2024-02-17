import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
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
                foregroundImage: AssetImage("assets/images/profile_image.jpeg"),
                radius: 20,
              ),
            ),
          ]),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: const Color.fromARGB(255, 222, 149, 35),
              child: ListTile(
                trailing: Image.asset(
                  "assets/images/card_image.png",
                  scale: 0.2,
                ),
                leading: const Text(
                  'Manage your \n'
                  'time well',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                contentPadding: const EdgeInsets.all(8),
              ),
            ),
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 222, 149, 35),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(4),
                            left: Radius.circular(4)),
                      ),
                    ),
                    child: const Icon(Icons.work_outline)),
              ),
              ElevatedButton(
                child: const Icon(Icons.account_circle_outlined),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Icon(Icons.shopping_bag_outlined),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Icon(Icons.monitor_heart_outlined),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(child: ListView()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedFontSize: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_card), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}
