import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/home/conponents/app_bar.dart';
import 'package:aceleda_bank/featured/app/home/conponents/card.dart';
import 'package:aceleda_bank/featured/app/home/conponents/dashboard.dart';
import 'package:aceleda_bank/featured/app/home/controller/scroll_navigation.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollNavigation scrollCtr = Get.find<ScrollNavigation>();
  final RxList<String> otpInputs = RxList.filled(6, '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 60),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: scrollCtr.scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashBoard(
              onTap: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => Dialog.fullscreen(
                    backgroundColor: Appcolors.primary.withOpacity(0.7),
                    child: Container(
                      padding: const EdgeInsets.only(top: 50),
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ===== Arrow back button =====
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppButton(
                              icon: "assets/images/svg/arrow_left.svg",
                              iconSize: 35,
                              width: 60,
                              padding: 0,
                              iconColor: Appcolors.light,
                              onTab: () {
                                Get.back();
                                otpInputs.clear();
                                otpInputs.addAll(List.filled(6, ''));
                              },
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          //===== profile =====
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Appcolors.gold),
                              borderRadius: BorderRadius.circular(50),
                              color: Appcolors.primaryLight,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.pinimg.com/736x/6e/58/b7/6e58b75150c447673afca5d2f16f163c.jpg"),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Name =====
                          const AppText(
                            text: "THE CHIVA",
                            color: Appcolors.gold,
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Phone Number =====
                          const AppText(
                            text: "069 496 048",
                            color: Appcolors.light,
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Phone Number =====
                          const AppText(
                            text: "Please Enter PIN",
                            color: Appcolors.light,
                          ),
                          const SizedBox(height: 2.0),
                          // ===== input field =====
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              6,
                              (index) {
                                return Obx(
                                  () => Container(
                                    width: 30,
                                    height: 30,
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Appcolors.light,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: otpInputs[index].isNotEmpty
                                          ? Appcolors.light
                                          : Colors
                                              .transparent, // Highlight input field when filled
                                    ),
                                    // child: Center(
                                    //   child: Text(
                                    //     otpInputs[index], // Display OTP digit
                                    //     style: const TextStyle(
                                    //       fontSize: 18,
                                    //       color: Colors.white,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 32.0),
                          // ===== Number field =====
                          Expanded(
                            child: GridView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 32,
                              ),
                              itemCount: 11,
                              itemBuilder: (context, index) {
                                if (index == 9) {
                                  // Empty slot (leave space)
                                  return const SizedBox.shrink();
                                } else if (index == 10) {
                                  // Display number 0
                                  return numberButton(context, '0');
                                } else {
                                  // Display numbers 1–9
                                  return numberButton(
                                      context, (index + 1).toString());
                                }
                              },
                            ),
                          ),
                          // ===== Forgot  and Cancel
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppButton(
                                    text: "Forgot PIN",
                                    customPadding:
                                        const EdgeInsets.only(right: 40),
                                    textStyle: const TextStyle(
                                        color: Appcolors.light, fontSize: 16),
                                    onTab: () {},
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: AppButton(
                                    text: "Delete",
                                    customPadding:
                                        const EdgeInsets.only(left: 40),
                                    textStyle: const TextStyle(
                                        color: Appcolors.light, fontSize: 16),
                                    onTab: () {
                                      int index = otpInputs.lastIndexWhere(
                                          (otp) => otp.isNotEmpty);
                                      if (index != -1) {
                                        otpInputs[index] = '';
                                        (context as Element).markNeedsBuild();
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const CardSevices(),
            // ===== Appearance =====
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: AppText(
                text: 'Appearance'.tr,
                fontFamily: langCtr.selectedLanguage.value == "km_KH"
                    ? AppFonts.boldKh
                    : AppFonts.regular,
                color: Appcolors.primary,
                size: 20,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Appcolors.primary,
                borderRadius: BorderRadius.circular(16.0),
                border:
                    Border.all(color: Appcolors.primaryLight.withOpacity(0.3)),
                image: const DecorationImage(
                    image: AssetImage("assets/images/png/cusomize.png"),
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.high),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: AppButton(
                  width: 100,
                  height: 40,
                  radius: 50.0,
                  text: 'Customize'.tr,
                  color: Appcolors.primary,
                  textStyle: TextStyle(
                    color: Appcolors.light,
                    fontFamily: langCtr.selectedLanguage.value == "km_KH"
                        ? AppFonts.regularKh
                        : AppFonts.medium,
                  ),
                  padding: 10,
                ),
              ),
            ),
            //
            const SizedBox(height: 100.0),
          ],
        ),
      ),
      floatingActionButton: !scrollCtr.showNav.value
          ? Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Appcolors.primaryLight.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Appcolors.primaryLight,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Appcolors.light)),
                child: AppButton(
                  icon: "assets/images/svg/scan_qr.svg",
                  iconColor: Appcolors.light,
                  iconSize: 30,
                  padding: 0,
                  onTab: () {},
                ),
              ),
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  Widget numberButton(BuildContext context, String number) {
    return InkWell(
      onTap: () {
        int index = otpInputs.indexWhere((otp) => otp.isEmpty);
        if (index != -1) {
          otpInputs[index] = number; // Update the otpInputs list
        }
        if (otpInputs.join() == '123456') {
          Future.delayed(const Duration(milliseconds: 500), () {
            Get.to(const SuccessPage());
            otpInputs.clear();
            otpInputs.addAll(List.filled(6, ''));
          });
        }
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Appcolors.light),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          number,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Success')),
      body: Center(
        child: const Text('Successfully!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
