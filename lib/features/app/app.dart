import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/widgets/bottom_nav_item.dart';
import 'package:firebase/features/app/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  App({super.key});

  final viewModel = Get.put(AppViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: viewModel.pages[viewModel.page.value]["page"],
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: AppColor.light,
            border: Border(
              top: BorderSide(
                color: AppColor.primary.withOpacity(0.1),
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              viewModel.pages.length,
              (index) => BottomNavItem(
                onTap: () => viewModel.page.value = index,
                isSelected: viewModel.page.value == index,
                title: viewModel.pages[index]["title"],
                icon: viewModel.pages[index]["icon"],
              ),
            ),
          ),
        ),
      ),
    );
  }
}