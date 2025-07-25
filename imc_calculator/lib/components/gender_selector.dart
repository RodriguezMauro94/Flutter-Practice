import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  final String? selectedGender;
  final Function(String) onGenderSelected;
  const GenderSelector({super.key, required this.selectedGender, required this.onGenderSelected});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.onGenderSelected("Male");
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 8, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.selectedGender == "Male"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100),
                      SizedBox(height: 8),
                      Text("Male".toUpperCase(), style: TextStyles.bodyStyle),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.onGenderSelected("Female");
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 16, right: 16, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.selectedGender == "Female"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100),
                      SizedBox(height: 8),
                      Text("Female".toUpperCase(), style: TextStyles.bodyStyle),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
