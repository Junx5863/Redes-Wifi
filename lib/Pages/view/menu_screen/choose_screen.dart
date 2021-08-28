import 'package:flutter/material.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_screen.dart';
import 'package:red_wfi/Pages/view/screen/bridget_list_screen.dart';
import 'package:red_wfi/Pages/view/screen/other_list_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Redes Wifi',
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
          elevation: 0,
          // give the app bar rounded corners
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: Colors.white,
            
            tabs: [
              Tab(
                child: Text(
                  'Aps',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Bridget',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Other',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: HomeScreen(),
                  ),

                  // second tab bar viiew widget
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: BridgetScreen(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: OtherListScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

SafeArea(
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

  AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Wifi Aps',
          style: TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        
      )

 */