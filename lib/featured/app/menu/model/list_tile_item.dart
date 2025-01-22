import 'package:aceleda_bank/common/widgets/input_test.dart';
import 'package:aceleda_bank/featured/app/menu/component/faqs.dart';
import 'package:aceleda_bank/featured/app/menu/component/invite_friends.dart';
import 'package:aceleda_bank/featured/app/menu/component/language_state.dart';
import 'package:aceleda_bank/featured/app/menu/component/product.dart';
import 'package:aceleda_bank/featured/app/menu/component/term.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileModel extends GetxController {
  final RxInt page = 0.obs;
  final RxList<Map<String, dynamic>> listTile = [
    {
      'page': LanguageLogic(),
      'title': 'CountryLanguage',
      'icon': Icons.language,
    },
    {
      'page': InputTest(),
      'title': 'location',
      'icon': Icons.location_on_outlined,
    },
    {
      'page': TermCondition(),
      'title': 'Terms and Conditions',
      'icon': Icons.insert_drive_file_outlined,
    },
    {
      'page': ProductService(),
      'title': 'Products & Services',
      'icon': Icons.home_work_outlined,
    },
    {
      'page': Faqs(),
      'title': 'FAQs',
      'icon': Icons.cable,
    },
    {
      'page': InviteFriends(),
      'title': 'Invite Friends',
      'icon': Icons.person_add_alt_1_outlined,
    },
    {
      'page': LanguageLogic(),
      'title': "ACleda Bank's Stock",
      'icon': Icons.security,
    },
    {
      'page': LanguageLogic(),
      'title': 'Security Tips',
      'icon': Icons.shield,
    },
    {
      'page': LanguageLogic(),
      'title': 'Contact Us (24/7)',
      'icon': Icons.phone,
    },
    {
      'page': LanguageLogic(),
      'title': 'Help',
      'icon': Icons.help,
    },
  ].obs;
}
