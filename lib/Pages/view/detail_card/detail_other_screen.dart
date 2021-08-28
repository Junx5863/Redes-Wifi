import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';

import '../../menu.dart';

class DetailOtherScreen extends StatelessWidget {
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

  const DetailOtherScreen(
      {this.commonname, //L
      this.keyServices, //L
      this.macaddr, // L
      this.channel, //L
      this.longitud, //L
      this.latitud, //L
      this.typeService, //L
      this.aps,
      this.fixMode,
      this.firstSeen,
      this.lastSeen});

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
                  Text(
                    '${this.typeService}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
            Flexible(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MyItems(
                      this.commonname,
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

Widget MyItems(
  String? commonname,
  String? maccAddres,
  String? phyName,
  String? keyServices,
  int? aps,
  int? fixMode,
  DateTime? fistSeen,
  DateTime? lastSeen,
) {
  List info = [
    commonname!,
    maccAddres!,
    phyName!,
    keyServices!,
    fistSeen!.toString(),
    lastSeen!.toString(),
    fixMode!.toString(),
    aps != null ? aps.toString() : '0',
  ];

  List<String> titleInfo = [
    'Common Name:',
    'Device MAC:',
    'Channel:',
    'Key:',
    'Firts Seen',
    'Last Seen',
    'Fix Mode',
    'Aps:'
  ];
  return StaggeredGridView.countBuilder(
    crossAxisCount: 2,
    itemCount: info.length,
    itemBuilder: (context, index) {
      return Material(
        color: Colors.white,
        elevation: 14.0,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titleInfo[index],
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.grey[850],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Text(
                      info[index],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
    staggeredTileBuilder: (index) => StaggeredTile.extent(2, 150),
    mainAxisSpacing: 16.0,
    crossAxisSpacing: 4.0,
  );
}
