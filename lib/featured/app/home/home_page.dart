import 'package:aceleda_bank/featured/app/home/conponents/app_bar.dart';
import 'package:aceleda_bank/featured/app/home/conponents/card.dart';
import 'package:aceleda_bank/featured/app/home/conponents/dashboard.dart';
import 'package:aceleda_bank/featured/app/home/controller/scroll_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollNavigation scrollCtr = Get.find<ScrollNavigation>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 60),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: scrollCtr.scrollController,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashBoard(),
            CardSevices(),
          ],
        ),
      ),
    );
  }
}
