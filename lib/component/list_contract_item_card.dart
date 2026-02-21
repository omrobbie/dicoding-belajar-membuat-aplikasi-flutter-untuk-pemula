import 'package:flutter/material.dart';
import 'package:pock/component/chip_label.dart';
import 'package:pock/component/custom_text.dart';
import 'package:pock/component/profile_avatar.dart';

class ListContractItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String nominal;
  final List<Map<String, dynamic>>? listType;

  const ListContractItemCard({
    super.key,
    this.imageUrl = '',
    required this.title,
    required this.nominal,
    this.listType,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100, minWidth: .infinity),
      child: Container(
        padding: const .symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(18),
        ),
        child: SingleChildScrollView(
          scrollDirection: .horizontal,
          child: Column(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                spacing: 12,
                children: [
                  if (imageUrl.isNotEmpty)
                    ProfileAvatar(imageUrl: imageUrl, radius: 18),
                  CustomText(text: title, fontSize: 18),
                  CustomText(text: nominal),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  if (listType != null)
                    for (var item in listType!)
                      ChipLabel(
                        text: item['title'],
                        isActive: item['is_active'],
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
