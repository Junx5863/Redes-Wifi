import 'package:flutter/material.dart';

import 'package:red_wfi/Pages/Screens/FilterScreen.dart';
import 'package:red_wfi/Pages/Screens/GpsScreen.dart';

import 'Screens/homeScreen.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MenuScreen extends StatefulWidget {
  //const MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

enum BottomIcons { Home, Gps, Filter }

class _MenuScreenState extends State<MenuScreen> {

  int _page = 0;
  final _listPage = [HomeScreen(),
          GpsScreen(),
          FilterScreen() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.gps_fixed, size: 30),
          Icon(Icons.filter_alt_rounded, size: 30)
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      
    );
  }
}
