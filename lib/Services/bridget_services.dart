import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:red_wfi/Model/bridget_model.dart';

class BridgedServices {

  Future<List<BridgetData>?> getData() async {
    final response = await http.get(Uri.parse(
        'https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/bridged.json'));

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