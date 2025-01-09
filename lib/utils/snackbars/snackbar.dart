
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Snackbars {
  static void error({String title = "Notificantion", required String message}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: const Color(0xfff4f4f4),
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'assets/svg/alien.svg',
          width: 24,
          height: 24,
          fit: BoxFit.cover,
          color: const Color(0xFFF64949),
        ),
      ),
    );
  }

  static void warning({
    String title = "Notificantion",
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: const Color(0xfff4f4f4),
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'assets/images/alert.svg',
          width: 24,
          height: 24,
          fit: BoxFit.cover,
          color: const Color(0xFFF5A623),
        ),
      ),
    );
  }

  static void success({
    String title = "Notificantion",
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: const Color(0xfff4f4f4),
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'assets/images/tick.svg',
          width: 24,
          height: 24,
          fit: BoxFit.cover,
          color: const Color(0xFF04963E),
        ),
      ),
    );
  }
}