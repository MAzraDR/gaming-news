import 'package:flutter/material.dart';
import 'package:gamingnews/screen/screen.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(left: 50),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Home_Screen.routeName);
                  },
                  icon: const Icon(Icons.home),
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Discover_Screen.routeName);
                },
                icon: const Icon(Icons.search),
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(right: 50),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Profile_screen.routeName);
                  },
                  icon: const Icon(Icons.person),
                ),
              ),
              label: 'Profile'),
        ]);
  }
}
