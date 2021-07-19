import 'package:flutter/material.dart';
import 'package:red_wfi/Model/ModelRedData.dart';
import 'package:red_wfi/Pages/Screens/detailCard/DetailCard_Screen.dart';
import 'package:red_wfi/Services/Services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  //HomeScreen({}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> redes = [
    'Microsoft Corporation',
    'iteon Technology Corporation',
    'Hon Hai Precision Ind Ltd',
    'Intel Corporation',
    'FAMILIA MATIZ',
    'Samsung Electro-Mechanics',
    'Unknown'
  ];

  ApiServices dataRed = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 50, bottom: 10, top: 50),
                child: Text(
                  'Nombres de los dispositivos:',
                  style: TextStyle(fontSize: 30, height: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Container de la lista de card with info
            Container(
              //alignment: Alignment.bottomCenter,
              //color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width * 0.96,
              height: MediaQuery.of(context).size.height * 0.70,
              //padding: EdgeInsets.all(8.0),
              child: FutureBuilder<List<RedData>?>(
                future: dataRed.getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardDetailScreen(
                                    commonname: snapshot.data![index]
                                        .kismetDeviceBaseCommonname,
                                    keyServices: snapshot
                                        .data![index].kismetDeviceBaseKey,
                                    macaddr: snapshot
                                        .data![index].kismetDeviceBaseMacaddr,
                                    manuf: snapshot
                                        .data![index].kismetDeviceBaseManuf,
                                    phyname: snapshot
                                        .data![index].kismetDeviceBasePhyname,
                                    typeService: snapshot
                                        .data![index].kismetDeviceBaseType,
                                    uuidService:
                                        snapshot.data![index].kismetServerUuid,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black87,
                                        offset: Offset(0.60, 0.80),
                                        blurRadius: 4.0),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 20,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snapshot.data![index]
                                                .kismetDeviceBaseManuf,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Wi-Fi | APP',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 50,
                                        height: 30,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Information {
  final String commonname;
  final String keyServices;
  final String macaddr;
  final String manuf;
  final String phyname;
  final String typeService;
  final String uuidService;

  Information(
    this.commonname,
    this.keyServices,
    this.macaddr,
    this.manuf,
    this.phyname,
    this.typeService,
    this.uuidService,
  );
}
