import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ScrollNavigation extends GetxController {
  final RxBool showNav = true.obs;
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      showNav.value = false;
    } else if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      showNav.value = true;
    }
  }

  @override
  void onClose() {
    scrollController.removeListener(_handleScroll);
    scrollController.dispose();
    super.onClose();
  }
}
