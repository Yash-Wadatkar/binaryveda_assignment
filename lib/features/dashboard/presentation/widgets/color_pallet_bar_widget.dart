import 'package:dashboard_ui_assignment/core/constants/app_strings.dart';
import 'package:dashboard_ui_assignment/core/theme/app_color_pallet.dart';
import 'package:dashboard_ui_assignment/core/theme/app_font.dart';
import 'package:flutter/material.dart';

class ColorPalletBarWidget extends StatelessWidget {
  const ColorPalletBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildColorPalletItem(index)),
    );
  }

  Widget _buildColorPalletItem(int index) {
    final isFirstItem = index == 0;

    return Expanded(
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: AppColorPallet.listOfColorPalletWidget[index],
        ),
        child: isFirstItem
            ? Center(
                child: Text(
                  AppStrings.pallette,
                  style: AppFonts.barlowCondensed(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColorPallet.whiteColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
