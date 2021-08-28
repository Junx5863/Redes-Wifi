import 'package:flutter/material.dart';
import 'package:red_wfi/Pages/view/detail_card/components/show_Ddialog.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';

class DetailBridgetScreen extends StatelessWidget {
  final String? channel;
  final String? commonname;
  final String? macaddr;
  final String? keyServices;
  final double? latitud;
  final double? longitud;
  final String? typeService;
  final int? aps;
  final int? fixMode;
  final DateTime? firstSeen;
  final DateTime? lastSeen;

  const DetailBridgetScreen({
    this.commonname, //L
    this.keyServices, //L
    this.macaddr, // L
    this.channel, //L
    this.longitud, //L
    this.latitud, //L
    this.typeService, //L
    this.aps, 
    this.fixMode, 
    this.firstSeen, 
    this.lastSeen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  this.latitud! != 0
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenListToGps(
                                  latitud: this.latitud!.toDouble(),
                                  longitud: this.longitud!.toDouble(),
                                  nombre: this.commonname!,
                                  // nombre: this.commonname!,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.gps_fixed),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'GPS',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            final snackBar = SnackBar(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.only(left: 20.0),
                              width: 350.0,
                              content: Text(
                                'No hay datos para dirigir al GPS',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              behavior: SnackBarBehavior.floating,
                              action: SnackBarAction(
                                label: 'Entendido',
                                onPressed: () {
                                  print('Action is clicked');
                                },
                                textColor: Colors.white,
                                disabledTextColor: Colors.grey,
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.gps_fixed),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'GPS',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${this.commonname}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Divider(
                    color: Colors.white,
                    height: 8.0,
                    endIndent: 60,
                    thickness: 1.5,
                  ),
                  Row(
                    children: [
                      Text(
                        '${this.typeService}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ShowMessageScreen();
                                });
                          },
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MyItems(this.commonname,
                      this.macaddr,
                      this.channel,
                      this.keyServices,
                      this.aps,
                      this.fixMode,
                      this.firstSeen,
                      this.lastSeen)),
            )
          ],
        ),
      ),
    );
  }
}
