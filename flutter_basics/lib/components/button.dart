import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("pressed");
          },
          child: Text("Botón"),
          onLongPress: () {
            print("long press");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
        ),
        OutlinedButton(onPressed: () {}, child: Text("Outlined")),
        OutlinedButton(onPressed: null, child: Text("disabled")),
        TextButton(onPressed: () {}, child: Text("Text button")),
        FloatingActionButton(onPressed: (){}, child: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        Spacer(),
      ],
    );
  }
}
