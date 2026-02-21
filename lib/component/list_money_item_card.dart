import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/profile_avatar.dart';

class ListMoneyItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String nominal;

  const ListMoneyItemCard({
    super.key,
    this.imageUrl = '',
    required this.title,
    required this.nominal,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100, minWidth: .infinity),
      child: Container(
        padding: const .symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(18),
        ),
        child: SingleChildScrollView(
          scrollDirection: .horizontal,
          child: Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            spacing: 16,
            children: [
              if (imageUrl.isNotEmpty)
                ProfileAvatar(imageUrl: imageUrl, radius: 18),
              CustomText(text: title, fontSize: 32),
              CustomText(text: nominal),
            ],
          ),
        ),
      ),
    );
  }
}
