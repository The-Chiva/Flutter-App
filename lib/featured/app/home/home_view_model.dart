import 'package:get/get.dart';

final homeMoel = Get.put(HomeViewModel());

class HomeViewModel extends GetxController {
  final pages = <Map<String, dynamic>>[
    {
      'icon': 'assets/images/svg/payments2.svg',
      'title': 'Payment',
    },
    {
      'icon': 'assets/images/svg/iphone.svg',
      'title': 'Mobile Top-up',
    },
    {
      'icon': 'assets/images/svg/transfer.svg',
      'title': 'Transfers',
    },
    {
      'icon': 'assets/images/svg/pay_me.svg',
      'title': 'Pay-Me',
    },
    {
      'icon': 'assets/images/svg/scan_qr.svg',
      'title': 'Scan QR',
    },
    {
      'icon': 'assets/images/svg/wallet.svg',
      'title': 'Accounts',
    },
    {
      'icon': 'assets/images/svg/deposits.svg',
      'title': 'Deposits',
    },
    {
      'icon': 'assets/images/svg/loans.svg',
      'title': 'Loands',
    },
    {
      'icon': 'assets/images/svg/quick_case.svg',
      'title': 'Quick Cash',
    },
  ];
}
