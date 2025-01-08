import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.primary,
      // shadowColor: Appcolors.light,
      // bottomOpacity: 100,
      elevation: 1,
      foregroundColor: Appcolors.primary,
      title: Image.asset(
        "assets/images/png/logoacleda.png",
        height: 40,
        fit: BoxFit.fitHeight,
      ),
      actions: [
        AppButton(
          // width: 24,
          icon: "assets/images/svg/bot.svg",
          iconSize: 30,
          padding: 0,
          iconColor: Appcolors.light,
          onTab: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppButton(
            icon: "assets/images/svg/scanqr.svg",
            iconSize: 20,
            padding: 15,
            customPadding: const EdgeInsets.all(5),
            iconColor: Appcolors.light,
            color: Appcolors.red,
            onTab: () {},
          ),
        ),
      ],
    );
  }
}
