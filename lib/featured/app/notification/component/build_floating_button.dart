import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:flutter/material.dart';

Widget buildFloatingActionButton() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Appcolors.strock,
      borderRadius: BorderRadius.circular(50),
    ),
    child: AppButton(
      icon: "assets/images/svg/widget.svg",
      iconSize: 35,
      iconColor: Appcolors.primary,
      padding: 0,
      onTab: () {},
    ),
  );
}
