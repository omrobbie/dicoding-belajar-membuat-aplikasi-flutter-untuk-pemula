import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final double radius;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  const CircleIconButton({
    super.key,
    this.radius = 48,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: SizedBox(
          height: radius,
          width: radius,
          child: Icon(icon, color: iconColor, size: radius / 2),
        ),
      ),
    );
  }
}
