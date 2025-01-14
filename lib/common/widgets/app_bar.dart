
import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';
import '../../featured/app/app_view_model.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Appcolors.primary,
      toolbarHeight: 60,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppText(
              text: "Notifications",
              size: 30,
              color: Appcolors.light,
            ),
            AppButton(
              icon: "assets/images/svg/logo_ac.svg",
              iconSize: 35,
              onTab: () => pageModel.page.value = 0,
            ),
          ],
        ),
      ),
    );
  }
}
