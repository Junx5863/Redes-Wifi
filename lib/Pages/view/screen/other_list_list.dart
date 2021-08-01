import 'package:flutter/material.dart';
import 'package:red_wfi/Model/other_model.dart';
import 'package:red_wfi/Pages/view/detail_card/detail_info_red_screen.dart';
import 'package:red_wfi/Services/other_services.dart';

class OtherListScreen extends StatelessWidget {

  OtherServices other = OtherServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //alignment: Alignment.bottomCenter,
          //color: Colors.amberAccent,
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.78,
          //padding: EdgeInsets.all(8.0),
          child: FutureBuilder<List<OtherData>?>(
            future: other.getData(),
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
                                channel: snapshot.data![index].channel,
                                commonname: snapshot.data![index].commonName,
                                macaddr: snapshot.data![index].deviceMac,
                                keyServices: snapshot.data![index].key,
                                latitud: snapshot.data![index].latitude,
                                longitud: snapshot.data![index].longitude,
                                typeService: snapshot.data![index].type,
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
