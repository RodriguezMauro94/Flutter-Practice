import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 60),
        TextField(),
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: "Introduce tu email")),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email)
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Introduce tu contraseña",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock)
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 3,
            maxLength: 60,
            decoration: InputDecoration(
              hintText: "Introduce tu comentario",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.comment)
            ),
          ),
        ),
      ],
    );
  }
}
