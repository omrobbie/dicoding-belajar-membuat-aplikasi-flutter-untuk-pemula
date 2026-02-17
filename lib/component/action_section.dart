import 'package:flutter/material.dart';
import 'package:pock/component/action_button.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listAction = [
      {'menu_id': 'money', 'icon': Icons.add, 'title': 'Add money'},
      {'menu_id': 'withdraw', 'icon': Icons.south, 'title': 'Withdraw'},
      {'menu_id': 'transfer', 'icon': Icons.north_east, 'title': 'Transfer'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 12,
      children: [
        for (var item in listAction.asMap().entries) ...[
          Expanded(
            child: ActionButton(
              menuId: item.value['menu_id'],
              icon: item.value['icon'],
              text: item.value['title'],
            ),
          ),
        ],
      ],
    );
  }
}
