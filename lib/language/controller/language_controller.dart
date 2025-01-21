import 'dart:ui';
import 'package:get/get.dart';

final LanguageController langCtr = Get.put(LanguageController());

class LanguageController extends GetxController {
  final selectedLanguage = 'en_US'.obs; // Observable for tracking language

  void changeLanguage(String languageCode, Locale locale) {
    selectedLanguage.value = languageCode; // Update selected language
    Get.updateLocale(locale); // Change language
  }
}
