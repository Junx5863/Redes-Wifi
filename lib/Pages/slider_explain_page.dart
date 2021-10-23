import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:red_wfi/Pages/menu.dart';
import 'package:red_wfi/Pages/view/screen/text_inside.dart';

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
                'Para comenzar!',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'Para Comenzar con la aplicacion Sacuw se necesitara un archivo kismet generado por Linux al cual debe instalar antes de generar el archivo ya que linux no lo trae instalado.' 
                  ' Por otro lado un programa para comvertir el kistmet a json. aqui mismo tiene la explicacion. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      height: 1.8, fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              image: buildImage(
                'assets/onboarding/1slider.png',
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'Kismet to Json',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Dentro de la consola de Linux colocaremos estas tres lineas. \n",
                    style: TextStyle(
                        color: Colors.black,
                        height: 1.8,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: '1.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              " git clone https://github.com/jnsgruk/kismet-kml. \n"),
                      TextSpan(
                          text: '2.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " Entramos al directorio 'cd kismet-kml'.\n"),
                      TextSpan(
                          text: '3.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              " Colocamos en consola python3 kismet-kml.py <Archivo Kismet> 'Sin el mayor y menor.' \n"),
                      TextSpan(
                          text: 'Nota: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Si por alguna razon sale el error 'simpleKml' solo debemos instalar 'pip install simplekml'."),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                  strutStyle: StrutStyle(),
                ),
              ),
              image: buildImage(
                'assets/onboarding/1.png',
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                'Carga de datos',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              bodyWidget: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Ya teniendo nuestro archivo kismet convertido a Json, dispondremos para cargarlo en la base de datos Firebase. \n",
                    style: TextStyle(
                        color: Colors.black,
                        height: 1.8,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: '1.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              " Cargamos el archivo en el apartado 'RealTime Database' \n"),
                      TextSpan(
                          text: '2.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " Clickeamos en los tres puntos para importar el archivo json \n"),
                      
                      TextSpan(
                          text: 'Nota: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "Si no tiene una base de datos cree una nueva'."),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                  strutStyle: StrutStyle(),
                ),
              ),
              image: buildImage(
                'assets/onboarding/Slider3.png',
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
                  'Al finalizar los procesos anteriores ya puede disponer de su información que se genero por medio del archivo Kismet que se convirtio en Json. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(height: 1.8, fontSize: 20),
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
                      //builder: (context) => MenuScreen(),
                      builder: (context) => TextInsideScreen()
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


/*


 */