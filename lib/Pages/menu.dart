import 'package:flutter/material.dart';

import 'package:red_wfi/Pages/view/menu_screen/FilterScreen.dart';
import 'package:red_wfi/Pages/view/menu_screen/choose_screen.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:red_wfi/Pages/view/menu_screen/gps_list.dart';


class MenuScreen extends StatefulWidget {
  //const MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _page = 0;
  final _listPage = [ChooseScreen(), GpsList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        height: 50,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.gps_fixed, size: 30),
          
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
