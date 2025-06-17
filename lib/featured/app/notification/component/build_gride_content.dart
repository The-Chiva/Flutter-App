import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildTranSlation extends StatelessWidget {
  const BuildTranSlation({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Appcolors.light,
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: const EdgeInsets.all(14.0),
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppButton(
                    icon: "assets/images/svg/scan_qr.svg",
                    iconSize: 24,
                    iconColor: Appcolors.primary,
                    color: Appcolors.strock,
                    radius: 50.0,
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                        text: "ACLEDA Mobile",
                        size: 16,
                        fontFamily: AppFonts.medium,
                        color: Appcolors.primary,
                      ),
                      const SizedBox(height: 4.0),
                      AppText(
                        text: 'Jan 08, 2025 4:05 PM'.tr,
                        size: 14,
                        fontFamily: langCtr.selectedLanguage.value == "km_KH"
                            ? AppFonts.regular
                            : AppFonts.regularKh,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8.0),
              AppText(
                size: 15.0,
                text:
                    'You have paid KHR 20,000.00 to Chiva The, ABA Bank, by KHQR, on 08-jan-2025 04:05 pm.'
                        .tr,
                fontFamily: langCtr.selectedLanguage.value == "km_KH"
                    ? AppFonts.regularKh
                    : AppFonts.regular,
              )
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
