import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/screen/balance.dart';
import 'package:pock/screen/contract.dart';
import 'package:pock/screen/money.dart';

class ListMenuItemCard extends StatelessWidget {
  final int index;
  final String menuId;
  final IconData icon;
  final String title;
  final String action;

  const ListMenuItemCard({
    super.key,
    this.index = 0,
    this.menuId = '',
    required this.icon,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = .circular(18);
    final Color backgroundColor =
        Colors.grey[(index + 1) * 100] ?? Colors.white;

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: InkWell(
            onTap: () {
              switch (menuId) {
                case 'withdrawals':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Money()),
                  );
                case 'payments':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contract()),
                  );
                case 'balance':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Balance()),
                  );
                default:
                  debugPrint('list item card: $menuId');
              }
            },
            borderRadius: borderRadius,
            child: Container(
              padding: const .symmetric(horizontal: 16, vertical: 18),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: ThemeColors.grass,
                    child: Icon(icon, size: 16, color: ThemeColors.cloud),
                  ),
                  const SizedBox(width: 14),
                  Expanded(child: CustomText(text: title)),
                  CustomText(text: action, fontSize: 14),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right, size: 18),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
