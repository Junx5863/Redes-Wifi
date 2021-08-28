import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';

class DataRedController extends GetxController {
  late GoogleMapController mapController;
  var allMarkers = <Marker>[].obs;

  @override
  @override
  void onClose() {
    mapController.dispose();
    super.onClose();
  }

  //Cuando inicia el mapa
  mapCreated(controller) {
    mapController = controller;
  }
}
