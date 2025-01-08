import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'home/controller/scroll_navigation.dart';

class App extends StatelessWidget {
  App({super.key});
  final ScrollNavigation scrollCtr = Get.put(ScrollNavigation());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pageModel.pages[pageModel.page.value]["page"],
        bottomNavigationBar: Container(
            width: double.infinity,
            // duration: const Duration(milliseconds: 300),
            height: scrollCtr.showNav.value ? 60 : 0,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.shade200)),
            ),
            child: scrollCtr.showNav.value
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      pageModel.pages.length,
                      (index) => BottomNavItem(
                        onTap: () => pageModel.page.value = index,
                        isSelected: pageModel.page.value == index,
                        icon: pageModel.pages[index]["icon"],
                        title: pageModel.pages[index]["title"],
                      ),
                    ),
                  )
                : null),
        floatingActionButton: !scrollCtr.showNav.value
            ? Container(
                // padding: EdgeInsets.only(bottom: 60),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Appcolors.primaryLight.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Appcolors.primaryLight,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Appcolors.light)),
                  child: AppButton(
                    icon: "assets/images/svg/scan_qr.svg",
                    iconColor: Appcolors.light,
                    iconSize: 30,
                    padding: 0,
                    onTab: () {},
                  ),
                ),
              )
            : null,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  final String icon;
  final String title;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / pageModel.pages.length,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
              color: isSelected ? Appcolors.gold : Appcolors.primary,
            ),
            const SizedBox(height: 4),
            AppText(
              text: title,
              size: 14,
              color: isSelected ? Appcolors.gold : Appcolors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
