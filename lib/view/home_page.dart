import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instaui_full/appbars/home_bar.dart';
import 'package:instaui_full/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = [HomeScreen()];

  final List<Widget> _appbars = [HomeBar()];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
        child: _appbars[_currentindex],
        preferredSize: Size(double.infinity, 50.0),
      ),
        body: _screens[_currentindex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Profile")
        ],
        onTap: (v) {
          setState(() {
            _currentindex = v;
          });
        },
      ),
    );
  }
}
