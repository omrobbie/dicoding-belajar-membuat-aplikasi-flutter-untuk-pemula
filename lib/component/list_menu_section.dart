import 'package:flutter/material.dart';
import 'package:pock/component/list_menu_item_card.dart';

class ListMenuSection extends StatelessWidget {
  const ListMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listMenu = [
      {
        'menu_id': 'withdrawals',
        'icon': Icons.south,
        'title': 'Recent withdrawals',
        'action': 'View all',
      },
      {
        'menu_id': 'payments',
        'icon': Icons.south_east,
        'title': 'Upcoming payments',
        'action': 'Get paid',
      },
      {
        'menu_id': 'balance',
        'icon': Icons.check,
        'title': 'My balance',
        'action': 'Review',
      },
    ];

    return Column(
      children: [
        for (var item in listMenu.asMap().entries)
          Transform.translate(
            offset: Offset(0, (-8 * (item.key + 1))),
            child: ListMenuItemCard(
              index: item.key,
              menuId: item.value['menu_id'],
              icon: item.value['icon'],
              title: item.value['title'],
              action: item.value['action'],
            ),
          ),
      ],
    );
  }
}
