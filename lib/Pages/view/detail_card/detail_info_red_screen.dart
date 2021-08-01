import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//Pages
import 'package:red_wfi/Pages/menu.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';

class CardDetailScreen extends StatelessWidget {
  final String? commonname;
  final String? keyServices;
  final String? macaddr;
  final String? channel;
  final double? longitud;
  final double? latitud;
  final String? typeService;
  final String? ssId;

  const CardDetailScreen({
    this.commonname, //L
    this.keyServices, //L
    this.macaddr, // L
    this.channel, //L
    this.longitud,  //L
    this.latitud, //L
    this.typeService, //L
    this.ssId, 
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuScreen()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
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
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  )
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
                    this.ssId,
                  )),
            )
          ],
        )));
  }
}

Widget MyItems(
  String? commonname,
  String? maccAddres,
  String? phyName,
  String? keyServices,
  String? uuidService,
) {
  List<String> info = [
    commonname!,
    maccAddres!,
    phyName!,
    keyServices!,
    uuidService!,

  ];

  List<String> titleInfo = [
    'title',
    'title',
    'title',
    'title',
    'title',
    'title',
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
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Text(
                      info[index],
                      style: TextStyle(
                        fontSize: 18,
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


