import 'package:aceleda_bank/featured/app/menu/component/language_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileModel extends GetxController {
  final int page = 0;
  List<Map<String, dynamic>> listItems = [
    {
      'page':  LanguageLogic(),
      'title': "Country and Language",
      'icon': Icons.language,
    },
    {
      'page': null,
      'title': "Location",
      'icon': Icons.location_on_outlined,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Terms and Conditions",
      'icon': Icons.insert_drive_file_outlined,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Products & Services",
      'icon': Icons.home_work_outlined,
    },
    {
      // 'page': LanguageLogic(),
      'title': "FAQs",
      'icon': Icons.cable,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Invite Friends",
      'icon': Icons.person_add_alt_1_outlined,
    },
    {
      // 'page': LanguageLogic(),
      'title': "ACleda Bank's Stock",
      'icon': Icons.security,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Security Tips",
      'icon': Icons.shield,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Contact Us (24/7)",
      'icon': Icons.phone,
    },
    {
      // 'page': LanguageLogic(),
      'title': "Help",
      'icon': Icons.help,
    },
  ];
}
