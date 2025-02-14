import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated using index
  final appScreens = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Ticket")),
    const Center(child: Text("Profile")),
  ];

  //change our index for BottomNavBar
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: appScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(FluentSystemIcons.ic_fluent_home_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
            BottomNavigationBarItem(label: "Search", icon: Icon(FluentSystemIcons.ic_fluent_search_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(label: "Ticket", icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(FluentSystemIcons.ic_fluent_people_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_people_filled)),
        ]),
      );
  }
}