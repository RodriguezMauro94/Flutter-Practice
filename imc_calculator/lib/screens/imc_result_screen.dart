import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/app_styles.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int age;
  final int weight;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.age,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    double fixedHeight = height / 100;
    double imcResultNumber = weight / (fixedHeight * fixedHeight);
    ImcResult imcResult = ImcResult(imcResultNumber);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      imcResult.shortDescription.toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: imcResult.color,
                      ),
                    ),
                    Text(
                      imcResultNumber.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 76,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        imcResult.description,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: AppStyles.buttonStyle,
              child: Text("Done", style: TextStyles.bodyStyle),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text("IMC Result"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }
}

class ImcResult {
  late String description;
  late Color color;
  late String shortDescription;

  ImcResult(double imcResult) {
    if (imcResult < 18.5) {
      shortDescription = "Underweight";
      color = Colors.blue;
      description = "You are underweight.";
    } else if (imcResult < 24.9) {
      shortDescription = "Normal weight";
      color = Colors.green;
      description = "You have a normal weight.";
    } else if (imcResult < 29.9) {
      shortDescription = "Overweight";
      color = Colors.orange;
      description = "You are overweight.";
    } else {
      shortDescription = "Obesity";
      color = Colors.red;
      description = "You have obesity.";
    }
  }
}
