import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedWeight = 50;
  int selectedAge = 20;
  String? selectedGender;
  int selectedHeight = 170;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(selectedGender: selectedGender, onGenderSelected: (value) {
          setState(() {
            selectedGender = value;
          });
        }),
        HeightSelector(selectedHeight: selectedHeight, onHeightChanged: (value) {
          setState(() {
            selectedHeight = value;
          });
        }),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: NumberSelector(
                  title: "Weight",
                  prefix: "KG",
                  value: selectedWeight.toDouble(),
                  onIncrement: () => {
                    setState(() {
                      selectedWeight++;
                    }),
                  },
                  onDecrement: () => {
                    setState(() {
                      if (selectedWeight > 0) {
                        selectedWeight--;
                      }
                    }),
                  },
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: NumberSelector(
                  title: "Age",
                  prefix: "",
                  value: selectedAge.toDouble(),
                  onIncrement: () => {
                    setState(() {
                      selectedAge++;
                    }),
                  },
                  onDecrement: () => {
                    setState(() {
                      if (selectedAge > 0) {
                        selectedAge--;
                      }
                    }),
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              child: Text("CALCULATE", style: TextStyles.bodyStyle),
            ),
          ),
        ),
      ],
    );
  }
}
