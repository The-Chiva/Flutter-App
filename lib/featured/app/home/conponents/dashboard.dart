import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/home/home_view_model.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          colors: [
            Appcolors.primaryLight,
            Appcolors.primary,
          ],
        ),
      ),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1.2,
                mainAxisSpacing: 1.2,
                crossAxisCount: 3,
                childAspectRatio: 3 / 3),
            itemCount: 9,
            itemBuilder: (context, index) => Container(
              decoration: const BoxDecoration(
                color: Appcolors.primary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    icon: homeMoel.pages[index]['icon'],
                    iconSize: 40,
                    padding: 0,
                    iconColor: Appcolors.light,
                    onTab: () {},
                  ),
                  const SizedBox(height: 8),
                  AppText(
                    text: homeMoel.pages[index]['title'],
                    color: Appcolors.light,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
