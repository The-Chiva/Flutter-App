import 'dart:developer';

import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildAppBar extends StatelessWidget {
  BuildAppBar({
    super.key,
    required this.title,
    this.titleSize = 30.0,
    this.centerTitle,
    this.onTap,
  });
  final AppViewModel pageCtr = Get.find<AppViewModel>();

  final String title;
  final double titleSize;
  final bool? centerTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.primary,
      toolbarHeight: 60,
      automaticallyImplyLeading: false,
      leading: AppButton(
        icon: "assets/images/svg/arrow_left.svg",
        iconSize: 30,
        iconColor: Appcolors.light,
        onTab: () => Get.back(),
      ),
      centerTitle: centerTitle,
      title: AppText(
        text: title,
        size: titleSize,
        color: Appcolors.light,
        fontFamily: langCtr.selectedLanguage.value == "km_KH"
            ? AppFonts.regularKh
            : AppFonts.medium,
      ),
      actions: [
        AppButton(
          icon: "assets/images/svg/logo_ac.svg",
          iconSize: 35,
          onTab: () {},
        )
      ],
    );
  }
}
