import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("IMC Calculator"),
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
        body: ImcHomeScreen(),
      ),
    );
  }
}
