import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Horizontal
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center, // Vertical
        children: const [
          Text("Hola soy mauro, Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
          Text("Hola soy mauro"),
        ],
      ),
    );
  }
}
