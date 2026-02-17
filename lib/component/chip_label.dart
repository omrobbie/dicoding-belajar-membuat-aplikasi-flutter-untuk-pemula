import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';
import 'package:pock/component/custom_text.dart';

class ChipLabel extends StatelessWidget {
  final String text;
  final bool isActive;
  const ChipLabel({super.key, required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isActive ? ThemeColors.pear : Colors.grey[200],
        borderRadius: .circular(4),
      ),
      child: CustomText(text: text, fontSize: 12),
    );
  }
}
