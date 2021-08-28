import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShowMessageScreen extends StatelessWidget {
  String descriptionBridget =
      "Cuando una Red Wifi trae el nombre 'Bridget' quiere decir que trabaja como un puente para compartir la conexion de la mayoria de partes con otro Router ";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: new Text("Wifi Bridget"),
      content: new Text(
        descriptionBridget,
        style: TextStyle(fontSize: 18),
      ),
      actions: <Widget>[
        new TextButton(
          child: new Text(
            "Entendido",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class ShowMessageApsScreen extends StatelessWidget {
  String descriptionBridget = "Texto Por Colocar! ";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: new Text("Wifi Ap"),
      content: new Text(
        descriptionBridget,
        style: TextStyle(fontSize: 18),
      ),
      actions: <Widget>[
        new TextButton(
          child: new Text(
            "Entendido",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
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
    aps.toString()
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
