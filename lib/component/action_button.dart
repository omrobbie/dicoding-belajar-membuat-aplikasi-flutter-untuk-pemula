import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';
import 'package:pock/component/custom_text.dart';

class ActionButton extends StatelessWidget {
  final String menuId;
  final IconData icon;
  final String text;

  const ActionButton({
    super.key,
    this.menuId = '',
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = 70;
    final BorderRadius borderRadius = BorderRadius.circular(buttonHeight / 2);

    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            height: buttonHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: borderRadius,
            ),
            child: InkWell(
              onTap: () {
                switch (menuId) {
                  case 'money':
                    debugPrint('action button: $menuId');
                  case 'withdraw':
                    debugPrint('action button: $menuId');
                  case 'transfer':
                    debugPrint('action button: $menuId');
                  default:
                    debugPrint('action button: $menuId');
                }
              },
              borderRadius: borderRadius,
              child: Center(
                child: Icon(icon, color: ThemeColors.grass, size: 24),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        CustomText(text: text, fontSize: 14),
      ],
    );
  }
}
