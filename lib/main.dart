import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:red_wfi/Pages/Screens/detailCard/DetailCard_Screen.dart';
import 'package:red_wfi/Pages/menu.dart';
import 'package:red_wfi/Pages/slider_explain_page.dart';

import 'Pages/Screens/GpsScreen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'FistPage',
      theme: ThemeData(
        textTheme: 
        GoogleFonts.vesperLibreTextTheme(
          Theme.of(context).textTheme,),
      ),
      routes: {
        'FistPage': ( _ ) => SliderExplainPage(),
        'MenuPage': ( _ ) => MenuScreen(),
        'CardDetail': ( _ ) => CardDetailScreen(),
        'GPSMap': ( _ ) => GpsScreen(),
      },
    );
  }
}

