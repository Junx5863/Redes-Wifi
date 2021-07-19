import 'package:flutter/material.dart';

class CardDetailScreen extends StatelessWidget {
  final String? commonname;
  final String? keyServices;
  final String? macaddr;
  final String? manuf;
  final String? phyname;
  final String? typeService;
  final String? uuidService;

  const CardDetailScreen({
    this.commonname,
    this.keyServices,
    this.macaddr,
    this.manuf,
    this.phyname,
    this.typeService,
    this.uuidService,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('${this.typeService}'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 80,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('${this.manuf}'),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
