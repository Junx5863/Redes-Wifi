import 'package:flutter/material.dart';
import 'package:red_wfi/Model/bridget_model.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';
import 'package:red_wfi/Services/bridget_services.dart';

class BridgetToGps extends StatelessWidget {
  
  BridgedServices bridged = BridgedServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          //alignment: Alignment.bottomCenter,
          //color: Colors.amberAccent,
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.78,
          //padding: EdgeInsets.all(8.0),
          child: FutureBuilder<List<BridgetData>?>(
            future: bridged.getData(),
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
                              builder: (context) => ScreenListToGps(
                                nombre: snapshot.data![index].commonName,
                                latitud: snapshot.data![index].latitude,
                                longitud: snapshot.data![index].longitude,
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
                                        snapshot.data![index].commonName,
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data![index].type,
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
      ),
    );
  }
}
