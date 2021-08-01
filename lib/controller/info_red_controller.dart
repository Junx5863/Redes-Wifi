
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:red_wfi/Pages/view/screen/aps_list_to_gps.dart';



class DataRedController extends GetxController {

  late GoogleMapController mapController;
  List<Marker> allMarkers = [];

   var latitude = 0.0;
  var longitud = 0.0;
  @override
  void onReady() {
    Get.to(ScreenListToGps(latitud: 0.0, longitud: 0.0, nombre: '',));
    super.onReady();
  }
  

  @override
  void onClose() {
    mapController.dispose();
    super.onClose();
  }

  //Cuando inicia el mapa
   mapCreated(controller) {
    onInit(){
      mapController = controller;
       super.onInit();
       update();
    }
  }

}
