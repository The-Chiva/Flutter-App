import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildBankInfo extends StatelessWidget {
  const BuildBankInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppButton(
            icon: "assets/images/svg/notification.svg",
            iconSize: 30,
            color: Appcolors.solid.withOpacity(0.3),
            iconColor: Appcolors.solid,
            width: 65,
            height: 65,
            padding: 8.0,
            radius: 50.0,
          ),
          const SizedBox(height: 6.0),
          AppText(
            text: 'Empty'.tr,
            color: Appcolors.solid,
            size: 20,
            fontFamily: langCtr.selectedLanguage.value == "km_KH"
                ? AppFonts.boldKh
                : AppFonts.medium,
          ),
          const SizedBox(height: 14.0),
          AppText(
            text: 'You have no notifications here.'.tr,
            color: Appcolors.solid,
            fontFamily: langCtr.selectedLanguage.value == "km_KH"
                ? AppFonts.regularKh
                : AppFonts.medium,
          ),
        ],
      ),
    );
  }
}
