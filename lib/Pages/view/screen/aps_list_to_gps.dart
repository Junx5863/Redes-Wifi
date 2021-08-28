import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:red_wfi/controller/info_red_controller.dart';

class ScreenListToGps extends StatefulWidget {
  final double longitud;
  final double latitud;
  final String nombre;

  ScreenListToGps(
      {required this.latitud, required this.longitud, required this.nombre});

  @override
  _ListToGpsState createState() => _ListToGpsState();
}

class _ListToGpsState extends State<ScreenListToGps> {
  final mapController = Get.put(DataRedController());

  @override
  void initState() {
    super.initState();
    mapController.allMarkers.add(
      Marker(
        markerId: MarkerId('myMArket'),
        draggable: true,
        position: LatLng(widget.latitud, widget.longitud),
        infoWindow: InfoWindow(title: '${widget.nombre}'
            // widget.nombre,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.grey[600],
          title: Text(
            'Name: ${widget.nombre} ',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: GetBuilder(
          init: DataRedController(),
          builder: ( _ ) => GoogleMap(
          onMapCreated: mapController.mapCreated,
          myLocationEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(widget.latitud, widget.longitud),
            zoom: 20.0,
          ),
          markers: Set.from(mapController.allMarkers),
        ),
        )
      );
  }
}

