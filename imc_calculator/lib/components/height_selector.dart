import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final int selectedHeight;
  final Function(int) onHeightChanged;
  const HeightSelector({super.key, required this.selectedHeight, required this.onHeightChanged});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text("HEIGHT", style: TextStyles.bodyStyle),
            ),
            Text("${widget.selectedHeight.toStringAsFixed(0)} cm", style: TextStyles.titleStyle),
            Slider(
              value: widget.selectedHeight.toDouble(),
              min: 150.0,
              max: 220.0,
              divisions: 70,
              label: "${widget.selectedHeight.toStringAsFixed(0)} cm",
              activeColor: AppColors.primary,
              onChanged: (value) {
                setState(() {
                  widget.onHeightChanged(value.toInt());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
