import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/profile_avatar.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 350.0),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const ProfileAvatar(
              imageUrl: "https://avatars.githubusercontent.com/u/8922430?v=4",
            ),

            const SizedBox(height: 12),

            const CustomText(text: 'Morning,'),

            const CustomText(text: 'omrobbie', fontSize: 26, fontWeight: .bold),
          ],
        ),
      ),
    );
  }
}
