import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(superhero.name)),
      body: Column(
        children: [
          Image.network(
            superhero.url,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment(0, -0.6),
          ),
          Text(
            superhero.realName,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.intelligence,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.blue,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Inteligencia', maxLines: 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.strength,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.red,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Fuerza', maxLines: 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.speed,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.green,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Velocidad', maxLines: 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.durability,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.orange,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Durabilidad', maxLines: 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.power,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.amber,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Power', maxLines: 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height:
                            double.tryParse(
                              superhero.powerStatsResponse.combat,
                            ) ??
                            0.0,
                        width: 20,
                        color: Colors.black,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Combate', maxLines: 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
