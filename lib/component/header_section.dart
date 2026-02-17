import 'package:flutter/material.dart';
import 'package:pock/base/theme_colors.dart';
import 'package:pock/component/circle_icon_button.dart';
import 'package:pock/component/custom_text.dart';

class HeaderSection extends StatelessWidget {
  final String? title;

  final IconData leftButtonIcon;
  final VoidCallback? leftButtonOnPressed;

  final IconData rightButtonIcon;
  final VoidCallback? rightButtonOnPressed;

  final List<Widget> children;

  const HeaderSection({
    super.key,
    this.title,
    required this.leftButtonIcon,
    this.leftButtonOnPressed,
    required this.rightButtonIcon,
    this.rightButtonOnPressed,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final bool isTitleEmpty = title == null || title!.isEmpty;
    return Scaffold(
      backgroundColor: ThemeColors.backgroudColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: 64.0),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        if (!isTitleEmpty) ...[
                          Row(
                            children: [
                              CustomText(
                                text: title!,
                                fontSize: 32,
                                fontWeight: .bold,
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Transform.translate(
                                offset: const Offset(8, 0),
                                child: CircleIconButton(
                                  icon: leftButtonIcon,
                                  iconColor: ThemeColors.grass,
                                  backgroundColor: ThemeColors.pear,
                                  onPressed: leftButtonOnPressed,
                                ),
                              ),

                              CircleIconButton(
                                icon: rightButtonIcon,
                                iconColor: ThemeColors.cloud,
                                backgroundColor: ThemeColors.grass,
                                onPressed: rightButtonOnPressed,
                              ),
                            ],
                          ),
                        ],

                        if (isTitleEmpty) ...[
                          CircleIconButton(
                            icon: leftButtonIcon,
                            iconColor: ThemeColors.grass,
                            backgroundColor: ThemeColors.pear,
                            onPressed: leftButtonOnPressed,
                          ),
                          CircleIconButton(
                            icon: rightButtonIcon,
                            iconColor: ThemeColors.cloud,
                            backgroundColor: ThemeColors.grass,
                            onPressed: rightButtonOnPressed,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(child: Column(children: children)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
