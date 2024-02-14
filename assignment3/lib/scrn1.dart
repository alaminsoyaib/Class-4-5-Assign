import 'package:flutter/material.dart';
import 'package:assignment3/nav_items/home_screen.dart';
import 'package:assignment3/nav_items/menu_screen.dart';
import 'package:assignment3/nav_items/profile_screen.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const MenuScreen(),
    const ProfileScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          leading: const Icon(Icons.home),
          title: const Text('AlaminNaki'),
          centerTitle: true,
          actions: const [
            Icon(Icons.menu),
          ],
          backgroundColor: Colors.amber,
        ),
        body: screens[currentIndex],
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.amber,
        //   child: const Icon(Icons.home, color: Colors.blue),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 150, 85, 85),
          unselectedItemColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 168, 218, 243),
          onTap: onTapped,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
