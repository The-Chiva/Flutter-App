import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/asset_button.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 8,
        right: 24,
        bottom: 2,
        top: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.07),
      ),
      child: TextField(
        style: textStyle(),
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: const AssetButton(
            padding: 0,
            width: 24,
            height: 24,
            icon: "assets/images/search.svg",
          ),
          hintText: "Search by coffee name",
          hintStyle: textStyle(color: Colors.grey.withOpacity(0.7)),
        ),
      ),
    );
  }
}