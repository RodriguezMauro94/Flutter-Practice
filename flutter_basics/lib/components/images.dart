import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.network("https://avatars.githubusercontent.com/u/58576182?v=4"),
        Image.asset("assets/images/dash.png", height: 100, fit: BoxFit.contain),
        Spacer()
      ],
    );
  }
}