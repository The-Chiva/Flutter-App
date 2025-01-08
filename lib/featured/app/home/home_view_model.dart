import 'package:get/get.dart';

final homeMoel = Get.put(HomeViewModel());

class HomeViewModel extends GetxController {
  final pages = <Map<String, dynamic>>[
    {
      // 'page': HomePage(),
      'icon': 'assets/images/svg/payments2.svg',
      'title': 'Payment',
    },
    {
      // 'page': FavoritePage(),
      'icon': 'assets/images/svg/iphone.svg',
      'title': 'Mobile Top-up',
    },
    {
      // 'page': NotificationPage(),
      'icon': 'assets/images/svg/transfer.svg',
      'title': 'Transfers',
    },
    {
      // 'page': HomePage(),
      'icon': 'assets/images/svg/pay_me.svg',
      'title': 'Pay-Me',
    },
    {
      // 'page': FavoritePage(),
      'icon': 'assets/images/svg/scan_qr.svg',
      'title': 'Scan QR',
    },
    {
      // 'page': NotificationPage(),
      'icon': 'assets/images/svg/wallet.svg',
      'title': 'Accounts',
    },
    {
      // 'page': HomePage(),
      'icon': 'assets/images/svg/deposits.svg',
      'title': 'Deposits',
    },
    {
      // 'page': FavoritePage(),
      'icon': 'assets/images/svg/loans.svg',
      'title': 'Loands',
    },
    {
      // 'page': NotificationPage(),
      'icon': 'assets/images/svg/quick_case.svg',
      'title': 'Quick Cash',
    },
  ];
}
