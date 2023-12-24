import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jeena/pages/fav.dart';
import 'package:jeena/pages/home_page.dart';
import 'package:jeena/pages/profile.dart';
import 'package:jeena/pages/scan.dart';
import 'package:jeena/pages/store.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentIndex = 0;
  List<Widget> pages = [
    MyHomePage(),
    Fav(),
    Scan(),
    Store(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(size: 30.0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
