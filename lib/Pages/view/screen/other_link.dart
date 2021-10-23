import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class OtherLinkScreen extends StatefulWidget {
  OtherLinkScreen({Key? key}) : super(key: key);

  @override
  _OtherLinkScreenState createState() => _OtherLinkScreenState();
}

class _OtherLinkScreenState extends State<OtherLinkScreen> {
  
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
                          "En los siguiente campos debe colocar el link o Apis al cual corresponde el cual es facilito por Firebase ",
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
                  controller: this.otherLink,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  //obscureText: this.ispassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.link),
                    border: InputBorder.none,
                    hintText: 'Other Link: ',
                  ),
                ),
              ),
              
              
              ElevatedButton(
                onPressed: () async{
                  Navigator.pushReplacementNamed(context, 'OtherLink');
               
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
                      'Empezar',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
  saveOtherAcces(String link) async {
    print('Su link es: $link');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('link', link);
  }
}