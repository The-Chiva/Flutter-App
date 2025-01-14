
import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class BuildFooter extends StatelessWidget {
  const BuildFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: const Center(
        child: Column(
          children: [
            AppText(
              text: "Version 7.15",
              color: Appcolors.solid,
            ),
            AppText(
              text: "Release Date: January 01, 2025",
              color: Appcolors.solid,
            ),
            AppText(
              text: "Your ACLEDA mobile version is up to date",
              color: Appcolors.solid,
            ),
            SizedBox(height: 32.0),
            AppText(
              text: "ACLEDA Bank Plc. -Credentials",
              color: Appcolors.solid,
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
