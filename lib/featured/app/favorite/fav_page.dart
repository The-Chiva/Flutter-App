import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppText(
                text: "Favorites",
                size: 26,
                color: Appcolors.light,
                fontFamily: AppFonts.medium,
              ),
              AppButton(
                icon: "assets/images/svg/logo_ac.svg",
                iconSize: 35,
                onTab: () => pageModel.page.value = 0,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            alignment: Alignment.center,
            child: Container(
              width: 120.0,
              height: 120.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Appcolors.primary,
                    Appcolors.light,
                    Appcolors.primaryLight,
                  ]),
                  borderRadius: BorderRadius.circular(100.0)),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: const LinearGradient(
                    colors: [
                      Appcolors.primary,
                      Appcolors.primaryLight,
                    ],
                  ),
                ),
                child: const AppButton(
                  icon: "assets/images/svg/favorite.svg",
                  iconColor: Appcolors.light,
                  iconSize: 70,
                  padding: 0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              decoration: const BoxDecoration(
                color: Appcolors.light,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(color: Appcolors.primaryLight),
                  ),
                  labelText: "Search for a favorite",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Appcolors.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
