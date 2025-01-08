import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final RxInt selectedIndex =
      1.obs; // Tracks the selected tab (like a bookmark).

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
            // Tab selector
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
                    _buildTabButton(
                      label: "Translation",
                      isSelected: selectedIndex.value == 0,
                      onTap: () => selectedIndex.value = 0,
                    ),
                    _buildTabButton(
                      label: "Bank Information",
                      isSelected: selectedIndex.value == 1,
                      onTap: () => selectedIndex.value = 1,
                    ),
                  ],
                ),
              ),
            ),

            // Content
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
                    ? _buildEmptyState()
                    : _buildGridContent(),
              ),
            ),
          ],
        ),
        // Floating Action Button for Translation Tab
        floatingActionButton:
            selectedIndex.value == 0 ? _buildFloatingActionButton() : null,
      ),
    );
  }

  // Helper method to build each tab button
  Widget _buildTabButton({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Appcolors.light.withOpacity(0.7),
                      spreadRadius: 3,
                      blurRadius: 2,
                    )
                  ]
                : [],
            borderRadius: BorderRadius.circular(50),
            color: isSelected
                ? Appcolors.light
                : Appcolors.primaryLight.withOpacity(0),
          ),
          child: AppText(
            text: label,
            size: 17.0,
            color: isSelected
                ? const Color.fromARGB(255, 26, 89, 177)
                : Appcolors.light,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: const EdgeInsets.only(top: 100.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppButton(
            icon: "assets/images/svg/notification.svg",
            iconSize: 30,
            color: Appcolors.solid.withOpacity(0.3),
            iconColor: Appcolors.solid,
            width: 65,
            height: 65,
            padding: 8.0,
            radius: 50.0,
          ),
          const SizedBox(height: 6.0),
          const AppText(
            text: "Empty",
            color: Appcolors.solid,
            size: 20,
          ),
          const SizedBox(height: 14.0),
          const AppText(
            text: "You have no notifications here.",
            color: Appcolors.solid,
          ),
        ],
      ),
    );
  }

  Widget _buildGridContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 16,
          childAspectRatio: 3,
        ),
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
                    children: [
                      AppButton(
                        icon: "assets/images/svg/scan_qr.svg",
                        iconSize: 24,
                        color: Appcolors.strock,
                        radius: 50.0,
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: "TACLEDA Mobile",
                            size: 18,
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
                AppText(
                    text:
                        "You have paid KHR 20,000.00 to Chiva The, ABA Bank, by KHQR, on 08-jan-2025 04:05.")
              ],
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }

  // Build the Floating Action Button
  Widget _buildFloatingActionButton() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Appcolors.strock.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: AppButton(
        icon: "assets/images/svg/menu.svg",
        iconSize: 35,
        iconColor: Appcolors.light,
        padding: 0,
        onTab: () {},
      ),
    );
  }
}
