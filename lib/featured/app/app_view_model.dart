import 'package:aceleda_bank/featured/app/home/home_page.dart';
import 'package:aceleda_bank/featured/app/menu/menu_page.dart';
import 'package:aceleda_bank/featured/app/notification/notification.dart';
import 'package:get/get.dart';

import 'favorite/fav_page.dart';

final pageModel = Get.put(AppViewModel());

class AppViewModel extends GetxController {
  final RxInt page = 0.obs;

  final pages = <Map<String, dynamic>>[
    {
      'page': HomePage(),
      'icon': 'assets/images/svg/home01.svg',
      'title': 'Home',
    },
    {
      'page': FavoritePage(),
      'icon': 'assets/images/svg/favorite.svg',
      'title': 'Favorites',
    },
    {
      'page': NotificationPage(),
      'icon': 'assets/images/svg/notification.svg',
      'title': 'Notifications',
    },
    {
      'page': MenuPage(),
      'icon': 'assets/images/svg/menu.svg',
      'title': 'Menu',
    },
  ];
}
