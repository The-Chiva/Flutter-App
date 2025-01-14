import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:aceleda_bank/featured/app/notification/component/build_empty_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'component/build_floating_button.dart';
import 'component/build_gride_content.dart';
import 'component/build_pop_up.dart';
import 'component/build_tap_button.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final RxInt selectedIndex = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
        ),
        body: Column(
          children: [
            // ===== Tab Bar =====
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Appcolors.primaryLight.withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    // ===== index 0 =====
                    buildTabButton(
                      label: "Translation",
                      isSelected: selectedIndex.value == 0,
                      onTap: () => selectedIndex.value = 0,
                    ),
                    // ===== index 1 =====
                    buildTabButton(
                      label: "Bank Information",
                      isSelected: selectedIndex.value == 1,
                      onTap: () => selectedIndex.value = 1,
                    ),
                  ],
                ),
              ),
            ),
            // ----- Tap Celector end -----

            // ===== Body Tap Bar =====
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Appcolors.strock,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: selectedIndex.value == 1
                    ? buildBankInfo()
                    : BuildTranSlation(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                backgroundColor: Appcolors.strock,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                child: buildPopUp(),
                              );
                            },
                          );
                        },
                      ),
              ),
            ),
            // ----- Body Tap Bar end -----
          ],
        ),
        // ===== Floating Action Button for Translation Tab =====
        floatingActionButton:
            selectedIndex.value == 0 ? buildFloatingActionButton() : null,
      ),
    );
  }
}
