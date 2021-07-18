import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:red_wfi/Pages/menu.dart';

class SliderExplainPage extends StatelessWidget {
  //const SliderExplainPge({ Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              titleWidget: Text(
                'Sincronizacion de datos',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ,when an unknown printer took a galley',
                  style: TextStyle(height: 1.8),
                ),
              ),
              image: buildImage(
                'assets/onboarding/1.png',
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'Carga del archivo al servidor',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ,when an unknown printer took a galley',
                  style: TextStyle(height: 1.8),
                ),
              ),
              image: buildImage(
                'assets/onboarding/exportFiles.png',
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'Muestra de datos',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ,when an unknown printer took a galley',
                  style: TextStyle(height: 1.8),
                ),
              ),
              image: buildImage(
                'assets/onboarding/undraw_app_data_re_vg5c.png',
              ),
              footer: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuScreen(),
                    ),
                  );
                },
                child: Text(
                  'Comenzar',
                  style: GoogleFonts.vesperLibre(),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 5,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ],
          done: Text(
            'Done',
            style: TextStyle(color: Colors.black),
          ),
          onDone: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(),
              ),
            );
          },
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(color: Colors.black)),
          next: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
          globalBackgroundColor: Colors.white,
          skipFlex: 0,
          nextFlex: 0,
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.black,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          isProgress: true,
          curve: Curves.decelerate,
        ),
      ),
    );
  }

  Widget buildImage(String path) {
    return Center(
      child: Image.asset(
        path,
        width: 450,
      ),
    );
  }
}
