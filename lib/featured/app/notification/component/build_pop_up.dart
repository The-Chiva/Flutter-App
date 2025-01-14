import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

Widget buildPopUp() {
  return SizedBox(
    height: 550.0,
    child: Column(
      children: [
        // ===== Header =====
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            alignment: Alignment.center,
            width: double.infinity,
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
        ),
        // ===== Body =====
        Expanded(
          flex: 9,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0),
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              color: Appcolors.light,
              child: const AppText(text: "Payment amount"),
            ),
          ),
        ),
        // ===== Footer =====
        Expanded(
          child: Container(
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
                      icon: "assets/images/svg/favorite1.svg",
                      iconSize: 20,
                      iconColor: Appcolors.light,
                      padding: 0,
                      space: 16.0,
                      textStyle: TextStyle(color: Appcolors.gold),
                    ),
                  ),
                ),
                const Expanded(
                  child: AppButton(
                    text: "SHARE",
                    icon: "assets/images/svg/transfer.svg",
                    iconSize: 20,
                    iconColor: Appcolors.light,
                    padding: 0,
                    space: 16.0,
                    textStyle: TextStyle(color: Appcolors.gold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
