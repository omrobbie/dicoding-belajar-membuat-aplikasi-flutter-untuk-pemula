import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/header_section.dart';
import 'package:pock/component/list_money_item_card.dart';
import 'package:pock/screen/wip.dart';

class Money extends StatelessWidget {
  const Money({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listTransaction = [
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.revolut.com&size=48',
        'title': 'Revolut',
        'nominal': '+ \$ 2,000 USD',
      },
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.behance.com&size=48',
        'title': 'Behance',
        'nominal': '+ \$ 1,500 USD',
      },
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.okx.com&size=48',
        'title': 'OKX',
        'nominal': '+ \$ 400 USD',
      },
      {'image_url': '', 'title': 'Total', 'nominal': '+ \$ 3,900 USD'},
    ];

    return HeaderSection(
      title: 'Money',
      leftButtonIcon: Icons.add,
      leftButtonOnPressed: () {
        Wip.showWip(context);
      },
      rightButtonIcon: Icons.south_east,
      rightButtonOnPressed: () {
        Wip.showWip(context);
      },
      children: [
        const SizedBox(height: 100),
        const Row(
          mainAxisAlignment: .spaceBetween,
          spacing: 16,
          children: [
            CustomText(text: 'This month'),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),

        const SizedBox(height: 16),
        Column(
          spacing: 16,
          children: [
            for (var item in listTransaction.asMap().entries) ...[
              ListMoneyItemCard(
                imageUrl: item.value['image_url'],
                title: item.value['title'],
                nominal: item.value['nominal'],
              ),
            ],
          ],
        ),
      ],
    );
  }
}
