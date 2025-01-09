import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  final String icon, title;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
            color: isSelected ? AppColor.primary : AppColor.dark,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: textStyle(
              fontSize: 10,
              fontFamily: Typographys.medium,
              color: isSelected ? AppColor.primary : AppColor.dark,
            ),
          ),
        ],
      ),
    );
  }
}