import 'package:flutter/material.dart';
import 'package:red_wfi/Model/ModelRedData.dart';
import 'package:red_wfi/Pages/Screens/detailCard/DetailCard_Screen.dart';
import 'package:red_wfi/Services/Services.dart';

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
            //color: Colors.red,
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
            width: MediaQuery.of(context).size.width * .90,
            height: MediaQuery.of(context).size.height * 0.69,
            //padding: EdgeInsets.all(8.0),
            child: FutureBuilder<List?>(
              future: dataRed.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data![0].kismetDeviceBaseManuf);
                }
                return Center(
                  child: CircularProgressIndicator(color: Colors.black,),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

/**
                ListView.builder(
                    itemCount: redes.length,
                    itemBuilder: (BuildContext context, index) {
                      print(data.kismetDeviceBaseManuf);
                      return Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CardDetailScreen(),
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
                                          data.kismetDeviceBaseManuf,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Wi-Fi AP',
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
                  );      */