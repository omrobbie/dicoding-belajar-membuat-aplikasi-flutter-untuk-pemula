import 'package:flutter/material.dart';
import 'package:pock/component/action_section.dart';
import 'package:pock/component/header_section.dart';
import 'package:pock/component/list_menu_section.dart';
import 'package:pock/component/profile_section.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderSection(
      leftButtonIcon: Icons.search,
      leftButtonOnPressed: () {
        debugPrint('header section: left button pressed');
      },
      rightButtonIcon: Icons.north_east,
      rightButtonOnPressed: () {
        debugPrint('header section: right button pressed');
      },
      children: [
        ProfileSection(),
        ActionSection(),
        const SizedBox(height: 24),
        ListMenuSection(),
      ],
    );
  }
}
