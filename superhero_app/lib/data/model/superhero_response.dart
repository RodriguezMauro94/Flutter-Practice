import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroResponse {
  final String response;
  final List<SuperheroDetailResponse>? results;

  SuperheroResponse({required this.response, this.results});

  factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroResponse(
      response: json['response'] as String,
      results: (json['results'] as List<dynamic>?)
          ?.map((item) => SuperheroDetailResponse.fromJson(item))
          .toList(),
    );
  }
}