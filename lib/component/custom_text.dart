import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = .normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Pixellari',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: ThemeColors.grass,
      ),
    );
  }
}
