import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/list_tile.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildLogOut extends StatelessWidget {
  const BuildLogOut({
    super.key,
    this.onTab,
  });
  final Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        decoration: BoxDecoration(
            color: Appcolors.light, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: BuildListTile(
            tilte: 'Log Out'.tr,
            textstyle: TextStyle(
                fontSize: 18.0,
                color: Appcolors.red,
                fontFamily: langCtr.selectedLanguage == "km_KH"
                    ? AppFonts.boldKh
                    : AppFonts.medium),
            leading: Icon(
              Icons.logout,
              color: Appcolors.red,
            ),
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Appcolors.solid,
            ),
          ),
        ),
      ),
    );
  }
}
