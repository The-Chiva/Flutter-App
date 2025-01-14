import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/colors/appcolor.dart';

Widget buildTabButton({
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