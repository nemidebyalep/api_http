import 'dart:convert' as convert;

import 'package:app_http/clases/respuesta_data.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {

  final url =Uri.parse('https://reqres.in/api/users/2');

  http.get(url).then((res){
      
     final respuesta = welcomeFromJson(res.body);
             print('${respuesta.datos}');     
  });
}
