import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class GraphScreen extends StatelessWidget {
  GraphScreen({super.key});

  final List<Feature> features = [
    Feature(
      title: "Temperature    ",
      color: Colors.blue,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Pressure    ",
      color: Colors.pink,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "PH Value    ",
      color: Colors.cyan,
      data: [0.5, 0.4, 0.85, 0.4, 0.7],
    ),
    Feature(
      title: "Conductivity    ",
      color: Colors.green,
      data: [0.6, 0.2, 0, 0.1, 1],
    ),
    Feature(
      title: "Humidity    ",
      color: Colors.amber,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 50,
        ),
        LineGraph(
          features: features,
          size: Size(1300, 500),
          labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
          labelY: ['20%', '40%', '60%', '80%', '100%'],
          showDescription: true,
          graphColor: Colors.white,
          graphOpacity: 0.5,
          verticalFeatureDirection: false,
          descriptionHeight: 130,
        ),
      ],
    );
  }
}
