import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superhero_app/data/model/superhero_response.dart';

class Repository {
  Future<SuperheroResponse?> fetchSuperheroInfo(String name) async {
    final response = await http.get(Uri.parse("https://superheroapi.com/api/1b904cd29151f240ffe7e54dfcd34156/search/$name"
    ));

    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      return SuperheroResponse.fromJson(decodedJson);
    } else {
      return null;
    }
  }
}