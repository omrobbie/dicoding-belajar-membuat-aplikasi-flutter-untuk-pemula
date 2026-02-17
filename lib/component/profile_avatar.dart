import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';

class ProfileAvatar extends StatelessWidget {
  final String? imageUrl;
  final double radius;

  const ProfileAvatar({super.key, required this.imageUrl, this.radius = 40});

  @override
  Widget build(BuildContext context) {
    final double size = radius * 2;

    return Container(
      decoration: BoxDecoration(
        shape: .circle,
        border: .all(color: Colors.grey.shade300, width: 1),
      ),
      child: ClipOval(
        child: SizedBox(
          width: size,
          height: size,
          child: imageUrl == null || imageUrl!.isEmpty
              ? _defaultAvatar(size)
              : Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return _defaultAvatar(size);
                  },
                ),
        ),
      ),
    );
  }

  Widget _defaultAvatar(double size) {
    return Container(
      width: size,
      height: size,
      color: ThemeColors.cloud,
      child: Icon(Icons.person, size: size * 0.5, color: ThemeColors.grass),
    );
  }
}
