import 'package:flutter/material.dart';


class GpsScreen extends StatefulWidget {
  //GpsScreen(Key key) : super(key: key);

  @override
  _GpsScreenState createState() => _GpsScreenState();
}

class _GpsScreenState extends State<GpsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Text('Sección Gps', style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }
}