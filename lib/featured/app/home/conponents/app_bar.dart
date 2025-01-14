import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/featured/app/home/conponents/contract_us.dart';
import 'package:aceleda_bank/featured/app/home/conponents/my_khqr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.primary,
      elevation: 1,
      foregroundColor: Appcolors.primary,
      title: Image.asset(
        "assets/images/png/logoacleda.png",
        height: 40,
        fit: BoxFit.fitHeight,
      ),
      actions: [
        AppButton(
          icon: "assets/images/svg/bot.svg",
          iconSize: 32,
          padding: 0,
          iconColor: Appcolors.light,
          onTab: () => Get.to(() => ContractUs()),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AppButton(
            icon: "assets/images/svg/scanqr.svg",
            iconSize: 22,
            customPadding: const EdgeInsets.all(5),
            iconColor: Appcolors.light,
            color: Appcolors.red,
            onTab: () => Get.to(() => MyKhqr()),
          ),
        ),
      ],
    );
  }
}
