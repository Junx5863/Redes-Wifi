import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:red_wfi/Model/Model_aps_data.dart';

class ApiServices {
  String url = '';
  Future<List<ApsData>?> getData() async {
  print('mensaje desde el servicio');
  print(url);
  
    final response = await http.get(
      Uri.parse(
        'https://pruebasparatodotipo-8849c-default-rtdb.firebaseio.com/aps.json',
      ),
    );

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
