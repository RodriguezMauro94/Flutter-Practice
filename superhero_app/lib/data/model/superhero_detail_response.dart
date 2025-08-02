class SuperheroDetailResponse {
  final String id;
  final String name;
  final String url;
  final String? fullName;
  final PowerStatsResponse powerStatsResponse;

  SuperheroDetailResponse({required this.id, required this.name, required this.url, required this.fullName, required this.powerStatsResponse});

  factory SuperheroDetailResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['image']['url'] as String,
      fullName: json['biography']['full-name'] as String?,
      powerStatsResponse: PowerStatsResponse.fromJson(json['powerstats']),
    );
  }
}

class PowerStatsResponse {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

  PowerStatsResponse({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory PowerStatsResponse.fromJson(Map<String, dynamic> json) {
    return PowerStatsResponse(
      intelligence: json['intelligence'],
      strength: json['strength'],
      speed: json['speed'],
      durability: json['durability'],
      power: json['power'],
      combat: json['combat'],
    );
  }
}