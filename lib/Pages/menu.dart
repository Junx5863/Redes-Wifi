import 'package:flutter/material.dart';

import 'package:red_wfi/Pages/Screens/FilterScreen.dart';
import 'package:red_wfi/Pages/Screens/GpsScreen.dart';
import 'package:red_wfi/Pages/Screens/bottomBar.dart';

import 'Screens/homeScreen.dart';

class MenuScreen extends StatefulWidget {
  //const MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

enum BottomIcons { Home, Gps, Filter }

class _MenuScreenState extends State<MenuScreen> {
  BottomIcons bottomIcons = BottomIcons.Home;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            bottomIcons == BottomIcons.Home ? HomeScreen() : Container(),
            bottomIcons == BottomIcons.Gps ? GpsScreen() : Container(),
            bottomIcons == BottomIcons.Filter ? FilterScreen() : Container(),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 0.80),
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 24, right: 24, bottom: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Home;
                            });
                          },
                          bottomIcons:
                              bottomIcons == BottomIcons.Home ? true : false,
                          icons: Icons.home,
                          text: 'Home',
                        ),
                        BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Gps;
                            });
                          },
                          bottomIcons:
                              bottomIcons == BottomIcons.Gps ? true : false,
                          icons: Icons.gps_fixed,
                          text: 'Gps',
                        ),
                        BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Filter;
                            });
                          },
                          bottomIcons:
                              bottomIcons == BottomIcons.Filter ? true : false,
                          icons: Icons.filter_alt_rounded,
                          text: 'Filter',
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
