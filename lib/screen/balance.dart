import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/header_section.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderSection(
      title: 'Balance',
      leftButtonIcon: Icons.add,
      leftButtonOnPressed: () {},
      rightButtonIcon: Icons.north_east,
      rightButtonOnPressed: () {},
      children: [
        SizedBox(height: 100),
        CustomText(text: 'Total balance'),
        CustomText(text: '\$ 12.350', fontSize: 48, fontWeight: .bold),
      ],
    );
  }
}
