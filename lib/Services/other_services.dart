import 'dart:convert';

import 'package:http/http.dart' as http;


import 'package:red_wfi/Model/other_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtherServices {

  Future<String?> generalLink() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('link3');
  }

  Future<List<OtherData>?> getData() async {
    //'https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/other.json'
     String? url = await generalLink();
    final response = await http.get(Uri.parse(
      url.toString()
        ));

    try {
      if (response.statusCode == 200) {

        List jsonResponse = json.decode(response.body);
        
        return jsonResponse.map((job) => OtherData.fromJson(job)).toList();
      } else {
        throw Exception('Fallo al cargar el Api');
      }
    } catch (e) {
      print(e);
    }
  }
}