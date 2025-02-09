import 'package:dashboard_ui_assignment/core/theme/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// widget to show social media icons on the screen
class SocialMediaIconsWidget extends StatelessWidget {
  final String icon;
  final String numbers;
  const SocialMediaIconsWidget(
      {super.key, required this.icon, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SvgPicture.asset(icon),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            numbers,
            style: AppFonts.barlow(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        )
      ],
    );
  }
}
