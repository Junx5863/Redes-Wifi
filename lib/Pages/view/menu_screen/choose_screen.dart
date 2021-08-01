import 'package:flutter/material.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

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
          'Wifi Aps',
          style: TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Wifi Aps Names:', style: TextStyle(fontSize: 30),),
            ),
            Flexible(
              
              child: Padding(
                padding: const EdgeInsets.only(left: 1.8, right: 1.8, ),
                child: HomeScreen(),
              )
            )
          ],
        ),
      ),
    );
  }
}
