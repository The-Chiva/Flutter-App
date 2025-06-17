import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildPopUp() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      // ===== Header =====
      Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Appcolors.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: const AppText(
          text: "KHQR PAYMENT",
          color: Appcolors.light,
        ),
      ),
      // ===== Body =====
      Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemRecept(
            textRow1Col1: 'Payment Amount'.tr,
            color: Appcolors.gold,
            textRow2Col1: '2.75 USD'.tr,
            textRow2Col2: 'Vai BAKONG'.tr,
          ),
          const SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Fee'.tr,
            textRow2Col1: '0 KHR',
          ),
          SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Reciever'.tr,
            color: Appcolors.primary,
            textRow2Col1: 'Theara by S.ROM',
            textRow2Col2: 'ABA BANK',
            // textCol1: '0 KHR',
          ),
          SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Debit amount'.tr,
            textRow1Col2: 'Exchange rate'.tr,
            textRow2Col1: '1000 KHR',
            textRow2Col2: '4.039',
          ),
          SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Form amount'.tr,
            color: Appcolors.primary,
            textRow2Col1: 'THE CHIVA',
            textRow2Col2: 'KHR 069 469 048',
          ),
          SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Date'.tr,
            textRow2Col1: 'Jan 21, 2025 01:51 PM'.tr,
          ),
          SizedBox(height: 8.0),
          ItemRecept(
            textRow1Col1: 'Completed'.tr,
            textRow1Col2: 'External Txn'.tr,
            textRow2Col1: 'Ref. 50211892304'.tr,
            textRow2Col2: 'fd8c6db2',
          ),
        ],
      )),
      // ===== Footer =====
      Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Appcolors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(right: BorderSide(color: Appcolors.solid)),
                ),
                child: const AppButton(
                  text: "REDO",
                  icon: "assets/images/svg/redo.svg",
                  iconSize: 20,
                  iconColor: Appcolors.gold,
                  padding: 0,
                  space: 16.0,
                  textStyle: TextStyle(color: Appcolors.gold),
                ),
              ),
            ),
            const Expanded(
              child: AppButton(
                text: "SHARE",
                icon: "assets/images/svg/share.svg",
                iconSize: 20,
                iconColor: Appcolors.gold,
                padding: 0,
                space: 16.0,
                textStyle: TextStyle(color: Appcolors.gold),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class ItemRecept extends StatelessWidget {
  const ItemRecept({
    super.key,
    this.textRow1Col1,
    this.textRow1Col2,
    this.textRow2Col1,
    this.textRow2Col2,
    this.color = Appcolors.solid,
  });

  final String? textRow1Col1;
  final String? textRow1Col2;
  final String? textRow2Col1;
  final String? textRow2Col2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Appcolors.light,
        boxShadow: [
          BoxShadow(
            color: Appcolors.solid,
            spreadRadius: 0.0,
            blurRadius: 8.0,
            offset: Offset(0.0, 5.0),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (textRow1Col1 != null && textRow1Col1!.isNotEmpty)
                AppText(
                  text: textRow1Col1 ?? "",
                  color: const Color.fromARGB(255, 153, 144, 144),
                  fontFamily: langCtr.selectedLanguage.value == "km_KH"
                      ? AppFonts.regularKh
                      : AppFonts.medium,
                ),
              if (textRow1Col2 != null && textRow1Col2!.isNotEmpty)
                AppText(
                  text: textRow1Col2 ?? "",
                  color: const Color.fromARGB(255, 153, 144, 144),
                  fontFamily: langCtr.selectedLanguage.value == "km_KH"
                      ? AppFonts.regularKh
                      : AppFonts.medium,
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (textRow2Col1 != null && textRow2Col1!.isNotEmpty)
                AppText(
                  text: textRow2Col1!,
                  color: color,
                  fontFamily: langCtr.selectedLanguage.value == "km_KH"
                      ? AppFonts.regularKh
                      : AppFonts.medium,
                ),
              if (textRow2Col2 != null && textRow2Col2!.isNotEmpty)
                AppText(
                  text: textRow2Col2!,
                  color: const Color.fromARGB(255, 71, 69, 69),
                  fontFamily: langCtr.selectedLanguage.value == "km_KH"
                      ? AppFonts.regularKh
                      : AppFonts.medium,
                )
            ],
          )
        ],
      ),
    );
  }
}
