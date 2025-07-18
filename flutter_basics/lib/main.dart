import 'package:flutter/material.dart';
import 'package:flutter_basics/components/button.dart';
import 'package:flutter_basics/components/images.dart';
import 'package:flutter_basics/components/text.dart';
import 'package:flutter_basics/components/textfield.dart';
import 'package:flutter_basics/layout/column.dart';
import 'package:flutter_basics/layout/row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basics"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.amber,
        body: ImageExample(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button Pressed");
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
