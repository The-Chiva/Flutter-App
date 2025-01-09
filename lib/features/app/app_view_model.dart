import 'package:firebase/features/app/cart/cart_page.dart';
import 'package:firebase/features/app/form/form_page.dart';
import 'package:firebase/features/app/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final viewModel = Get.put(AppViewModel());

class AppViewModel extends GetxController {
  // --- | ---
  final RxInt page = 0.obs;
  final loading = true.obs;

  final pages = <Map<String, dynamic>>[
    {
      "page": HomePage(),
      "icon": "assets/images/home.svg",
      "title": "Home",
    },
    {
      "page": CardPage(),
      "icon": "assets/images/coffee.svg",
      "title": "Cart",
    },
    {
      "page": FavoritePage(),
      "icon": "assets/images/favorite.svg",
      "title": "Favorites",
    },
    {
      "page": const Center(child: Text("Profile")),
      "icon": "assets/images/user.svg",
      "title": "Profile",
    },
  ];

  // --- | ---
  Future delayed() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  // --- | ---
  
}