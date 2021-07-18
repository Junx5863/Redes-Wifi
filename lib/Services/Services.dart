import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:red_wfi/Model/ModelRedData.dart';

class ApiServices {
  Future<List?> getData() async {
    final response = await http.get(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/proyecto-de-grado-7c7d6.appspot.com/o/convert.json?alt=media&token=bb4b1284-bb78-40ef-8c7e-6535a7762afb.json'));

    try {
      if (response.statusCode == 200) {

        final jsonResponse = json.decode(response.body);
        List responsen = jsonResponse.map((job) => RedData.fromJson(job)).toList();
    
        return responsen; 
    
      } else {
        throw Exception('Fallo al cargar el Api');
      }
    } catch (e) {
      print(e);
    }
  }
}
