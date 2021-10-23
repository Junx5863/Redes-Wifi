import 'package:flutter/material.dart';
import 'package:red_wfi/Pages/menu.dart';
import 'package:red_wfi/Services/services_info_red.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextInsideScreen extends StatefulWidget {
  TextInsideScreen({Key? key}) : super(key: key);

  @override
  _TextInsideScreenState createState() => _TextInsideScreenState();
}

class _TextInsideScreenState extends State<TextInsideScreen> {
  final appsLink = TextEditingController();
  final bridgetLink = TextEditingController();
  final otherLink = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Antes de empezar',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 60,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Nota: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(
                      text:
                          "En los siguientes campos debe colocar los link o Apis las cuales le facilito Firebase ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: this.appsLink,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  //obscureText: this.ispassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.link),
                    border: InputBorder.none,
                    hintText: 'Link 1',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  saveLinkAcces(this.appsLink.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 2,
                  shape: StadiumBorder(),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Validar Link 1',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: this.bridgetLink,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  //obscureText: this.ispassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.link),
                    border: InputBorder.none,
                    hintText: 'Link 2',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  saveBridgetAcces(this.bridgetLink.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 2,
                  shape: StadiumBorder(),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Validar Link 2',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: this.otherLink,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  //obscureText: this.ispassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.link),
                    border: InputBorder.none,
                    hintText: 'Link 3',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  saveOtherAcces(this.otherLink.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 2,
                  shape: StadiumBorder(),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Validar link 3',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, 'MenuPage');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 2,
                  shape: StadiumBorder(),
                ),
                child: Container(
                    width: 95,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Comenzar',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }

  saveLinkAcces(String link) async {
    print('Su link es: $link');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('link1', link);
  }

  saveBridgetAcces(String link) async {
    print('Su link es: $link');
    SharedPreferences prefs2 = await SharedPreferences.getInstance();

    await prefs2.setString('link2', link);
  }

  saveOtherAcces(String link) async {
    print('Su link es: $link');
    SharedPreferences prefs3 = await SharedPreferences.getInstance();

    await prefs3.setString('link3', link);
  }
}
