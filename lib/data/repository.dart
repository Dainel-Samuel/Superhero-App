import 'dart:convert';

import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;

class Repository {

  Future<SuperheroResponse?> fetchSuperheroInfo(String name) async {
    final response = await http.get(Uri.parse("https://www.superheroapi.com/api.php/1d53d5b1e0a235ec49d42e1be3ef1b51/search/$name"));

    if(response.statusCode == 200){
      var decodedjson = jsonDecode(response.body);
      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(decodedjson);
      return superheroResponse;
    } else {
      return null;
    }
  }
}