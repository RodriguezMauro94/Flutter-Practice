import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Hello, World!'),
        Text(
          'Texto Grande!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Texto Italica!',
          style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),
        Text(
          'Texto Italica!',
          style: TextStyle(fontSize: 24, color: Colors.red, backgroundColor: Colors.amber),
        ),
        Text(
          'Decorator',
          style: TextStyle(fontSize: 24, decoration: TextDecoration.lineThrough),
        ),
        Text(
          'Link',
          style: TextStyle(fontSize: 24, color: Colors.blue, decorationColor: Colors.blue, decoration: TextDecoration.underline),
        ),
        Text(
          'Espaciado entre letras',
          style: TextStyle(fontSize: 24, letterSpacing: 5),
        ),
        Text(
          'Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo',
          style: TextStyle(fontSize: 30),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
