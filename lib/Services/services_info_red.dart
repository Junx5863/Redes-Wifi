import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:red_wfi/Model/Model_aps_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiServices {
  String url = '';

  Future<String?> generalLink() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('link1');
  }

  Future<List<ApsData>?> getData() async {
  print('mensaje desde el servicio');
  String? url = await generalLink();
  
    final response = await http.get(
      Uri.parse(
        url.toString(),
      ),
    );
    //'https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/aps.json
    // https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/aps

    try {
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);

        return jsonResponse.map((job) => ApsData.fromJson(job)).toList();
      } else {
        throw Exception('Fallo al cargar el Api');
      }
    } catch (e) {
      print(e);
    }
  }
}

