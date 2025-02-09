import 'package:dashboard_ui_assignment/core/constants/app_icons.dart';
import 'package:dashboard_ui_assignment/core/theme/app_color_pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            /// leading app logo icon
            SvgPicture.asset(AppIcons.icAppLogoIcon),

            Expanded(flex: 97, child: SizedBox()),

            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                  color: AppColorPallet.redColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.person_outline,
                color: AppColorPallet.whiteColor,
              ),
            ),
            Expanded(flex: 39, child: SizedBox()),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(AppIcons.icAddIcon)),

            Expanded(
              flex: 37,
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.icHamburberIcon)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80); // Custom height
}
