import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final String prefix;
  final double value;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({super.key, required this.title, required this.prefix, required this.value, required this.onIncrement, required this.onDecrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(widget.title.toUpperCase(), style: TextStyles.bodyStyle),
              Text(
                "${widget.value.toStringAsFixed(0)} ${widget.prefix}",
                style: TextStyles.titleStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onDecrement();
                    },
                    backgroundColor: AppColors.primary,
                    shape: CircleBorder(),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onIncrement();
                    },
                    backgroundColor: AppColors.primary,
                    shape: CircleBorder(),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
