import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero: ${superhero.name}")),
      body: Column(
        children: [
          Image.network(
            superhero.url,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment(0, -0.6),
          ),
          Text(superhero.name, style: TextStyle(fontSize: 28)),
          Text(
            superhero.fullName ?? "Unknown",
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SuperheroStat(statValue: superhero.powerStatsResponse.intelligence, color: Colors.blue, description: "Intelligence"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SuperheroStat(statValue: superhero.powerStatsResponse.strength, color: Colors.grey, description: "Strength"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SuperheroStat(statValue: superhero.powerStatsResponse.speed, color: Colors.green, description: "Speed"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SuperheroStat(statValue: superhero.powerStatsResponse.durability, color: Colors.orange, description: "Durability"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SuperheroStat(statValue: superhero.powerStatsResponse.power, color: Colors.red, description: "Power"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SuperheroStat(statValue: superhero.powerStatsResponse.combat, color: Colors.black, description: "Combat"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SuperheroStat extends StatelessWidget {
  final String statValue;
  final Color color;
  final String description;
   
  const SuperheroStat({
    super.key,
    required this.statValue,
    required this.color,
    required this.description,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height: double.parse(statValue), width: 20, color: color),
        Text(description)
      ],
    );
  }
}
