import 'package:flutter/material.dart';
import 'package:pock/component/action_section.dart';
import 'package:pock/component/header_section.dart';
import 'package:pock/component/list_menu_section.dart';
import 'package:pock/component/profile_section.dart';
import 'package:pock/screen/wip.dart';

class Dashboard extends StatelessWidget {
  final String username;
  const Dashboard({super.key, this.username = ''});

  @override
  Widget build(BuildContext context) {
    return HeaderSection(
      leftButtonIcon: Icons.search,
      leftButtonOnPressed: () {
        Wip.showWip(context);
      },
      rightButtonIcon: Icons.north_east,
      rightButtonOnPressed: () {
        Wip.showWip(context);
      },
      children: [
        ProfileSection(username: username),
        ActionSection(),
        const SizedBox(height: 24),
        ListMenuSection(),
      ],
    );
  }
}
