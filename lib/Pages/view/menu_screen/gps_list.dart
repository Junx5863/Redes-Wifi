import 'package:flutter/material.dart';
import 'package:red_wfi/Pages/view/screen/components/aps_list_gps.dart';
//Package

import 'package:red_wfi/Pages/view/screen/components/bridget_list_gps.dart';

class GpsList extends StatefulWidget {
  

  @override
  _GpsScreenState createState() => _GpsScreenState();
}

class _GpsScreenState extends State<GpsList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Wifi Bridget',
          style: TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Wifi Bridget Names:', style: TextStyle(fontSize: 30),),
            ),
            Flexible(
              
              child: Padding(
                padding: const EdgeInsets.only(left: 1.8, right: 1.8, ),
                child: ApsListGps(),
              )
            )
          ],
        ),
      ),
    );
  }
}
