import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildFooter extends StatelessWidget {
  const BuildFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: Center(
        child: Column(
          children: [
            AppText(
              text: 'Version 7.15'.tr,
              color: Appcolors.solid,
              fontFamily: langCtr.selectedLanguage.value == "km_KH"
                  ? AppFonts.regularKh
                  : AppFonts.medium,
            ),
            AppText(
              text: 'Release Date: January 01, 2025'.tr,
              color: Appcolors.solid,
              fontFamily: langCtr.selectedLanguage.value == "km_KH"
                  ? AppFonts.regularKh
                  : AppFonts.medium,
            ),
            AppText(
              text: 'Your ACLEDA mobile version is up to date'.tr,
              color: Appcolors.solid,
              fontFamily: langCtr.selectedLanguage.value == "km_KH"
                  ? AppFonts.regularKh
                  : AppFonts.medium,
            ),
            const SizedBox(height: 32.0),
            const AppText(
              text: 'ACLEDA Bank Plc. -Credentials',
              color: Appcolors.solid,
              fontFamily: AppFonts.medium,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
