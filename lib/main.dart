import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:red_wfi/Pages/view/detail_card/detail_info_red_screen.dart';
import 'package:red_wfi/Pages/menu.dart';
import 'package:red_wfi/Pages/slider_explain_page.dart';

import 'Pages/view/menu_screen/gps_list.dart';
import 'Pages/view/screen/aps_list_to_gps.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'FistPage',
      theme: ThemeData(
        textTheme: GoogleFonts.vesperLibreTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        'FistPage': (_) => SliderExplainPage(),
        'MenuPage': (_) => MenuScreen(),
        'CardDetail': (_) => CardDetailScreen(),
        'GPSListMap': (_) => GpsList(),
      },
    );
  }
}
