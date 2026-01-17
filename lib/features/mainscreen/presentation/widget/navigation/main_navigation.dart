import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_enum.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_extension.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_item.dart';
import 'package:reminder_app/theme/color_theme.dart';

class MainBottomNavigation extends StatelessWidget {
  final ValueChanged<MainNavigationItem> onTap;
  final List<MainNavigationItem> navItems;
  final MainNavigationEnum selectedEnum;
  const MainBottomNavigation({
    super.key,
    required this.onTap,
    required this.navItems,
    required this.selectedEnum,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.w),
      decoration: BoxDecoration(
        color: ColorTheme.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 15,
            blurRadius: 60,
            color: ColorTheme.darkGray.withValues(alpha: 0.08),
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navItems.map((navItem) {
          final isSelected = navItem.type == selectedEnum;
          return InkWell(
            onTap: () => onTap(navItem),
            child: SizedBox(
              width: 55.w,
              height: 50.w,
              child: Center(
                child: SvgPicture.asset(
                  navItem.type.icon,
                  width: 32.w,
                  height: 32.w,
                  colorFilter: isSelected
                      ? ColorFilter.mode(ColorTheme.blue, BlendMode.srcIn)
                      : ColorFilter.mode(ColorTheme.darkGray, BlendMode.srcIn),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
