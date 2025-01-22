// import 'package:aceleda_bank/featured/app/home/controller/scroll_navigation.dart';
// import 'package:aceleda_bank/featured/app/home/home_page.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';

// class HomeController extends GetxController {
//   final ScrollNavigation scrollCtr = Get.find<ScrollNavigation>();
//   var otpInputs = List.generate(6, (index) => '').obs;
//   final String correctPin = "123456";

//   void onNumberPressed(String number) {
//     int index = otpInputs.indexWhere((otp) => otp.isEmpty);
//     if (index != -1) {
//       otpInputs[index] = number;
//       if (otpInputs.join() == correctPin) {
//         Get.to(() => SuccessPage());
//       }
//     }
//   }

//   void onDeletePressed() {
//     int index = otpInputs.lastIndexWhere((otp) => otp.isNotEmpty);
//     if (index != -1) {
//       otpInputs[index] = '';
//     }
//   }
// }