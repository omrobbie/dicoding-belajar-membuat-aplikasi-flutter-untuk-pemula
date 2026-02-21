import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/header_section.dart';
import 'package:pock/component/list_contract_item_card.dart';
import 'package:pock/screen/wip.dart';

class Contract extends StatelessWidget {
  const Contract({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listContract = [
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.revolut.com&size=48',
        'title': 'From OKX',
        'nominal': '\$ 6,000',
        'list_type': [
          {'title': 'Active', 'is_active': true},
          {'title': 'Monthly', 'is_active': false},
          {'title': 'Fixed-rate', 'is_active': false},
        ],
      },
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.framer.com&size=48',
        'title': 'From Framer',
        'nominal': '\$ 2,500',
        'list_type': [
          {'title': 'Project', 'is_active': false},
          {'title': 'Hourly-rate', 'is_active': false},
        ],
      },
      {
        'image_url':
            'https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=http://www.medium.com&size=48',
        'title': 'From Medium',
        'nominal': '\$ 150/h',
        'list_type': [
          {'title': 'Active', 'is_active': true},
          {'title': 'Freelance', 'is_active': false},
          {'title': 'Hourly-rate', 'is_active': false},
        ],
      },
    ];

    return HeaderSection(
      title: 'Contracts',
      leftButtonIcon: Icons.add,
      leftButtonOnPressed: () {
        Wip.showWip(context);
      },
      rightButtonIcon: Icons.search,
      rightButtonOnPressed: () {
        Wip.showWip(context);
      },
      children: [
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            CustomText(text: 'This year'),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),

        SizedBox(height: 16),
        Column(
          spacing: 16,
          children: [
            for (var item in listContract)
              ListContractItemCard(
                imageUrl: item['image_url'],
                title: item['title'],
                nominal: item['nominal'],
                listType: item['list_type'],
              ),
          ],
        ),
      ],
    );
  }
}
