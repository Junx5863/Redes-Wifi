import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:red_wfi/Model/bridget_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BridgedServices {

  Future<String?> generalLink() async {
    SharedPreferences prefs2 = await SharedPreferences.getInstance();

    return prefs2.getString('link2');
  }

  Future<List<BridgetData>?> getData() async {
    // 'https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/bridged.json'
    String? url = await generalLink();
    final response = await http.get(Uri.parse(
      url.toString()
       ));

    try {
      if (response.statusCode == 200) {

        List jsonResponse = json.decode(response.body);
        
        return jsonResponse.map((job) => BridgetData.fromJson(job)).toList();
      } else {
        throw Exception('Fallo al cargar el Api');
      }
    } catch (e) {
      print(e);
    }
  }
}