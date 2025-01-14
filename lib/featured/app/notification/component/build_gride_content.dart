import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildTranSlation extends StatelessWidget {
  const BuildTranSlation({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisSpacing: 16, childAspectRatio: 2.6),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Appcolors.light,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                          icon: "assets/images/svg/scan_qr.svg",
                          iconSize: 24,
                          iconColor: Appcolors.primary,
                          color: Appcolors.strock,
                          radius: 50.0,
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: "ACLEDA Mobile",
                              size: 18,
                              fontFamily: AppFonts.medium,
                              color: Appcolors.primary,
                            ),
                            SizedBox(height: 4.0),
                            AppText(
                              text: "Jan 08, 2025 4:05 PM",
                              size: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: AppText(
                        text:
                            "You have paid KHR 20,000.00 to Chiva The, ABA Bank, by KHQR, on 08-jan-2025 04:05."),
                  )
                ],
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
