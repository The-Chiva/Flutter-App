import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:flutter/material.dart';

Widget buildFloatingActionButton() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Appcolors.strock.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: AppButton(
        icon: "assets/images/svg/menu.svg",
        iconSize: 35,
        iconColor: Appcolors.light,
        padding: 0,
        onTab: () {},
      ),
    );
  }