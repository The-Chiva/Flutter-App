import 'dart:developer';

import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/app_bar.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyKhqr extends StatelessWidget {
  MyKhqr({super.key});

  final RxString selectedAccount = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: BuildAppBar(
          title: "My KHQR",
          titleSize: 24,
        ),
      ),
      body: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 70),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 39, 81, 196),
                Appcolors.primary,
              ],
              begin: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: selectedAccount.value.isEmpty
                    //     ? Appcolors.gold
                    //     : selectedAccount.value == "KHR | 069 496 048"
                    //         ? Colors.white
                    //         : Colors.green,

                    color: Appcolors.light,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // header
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Appcolors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: const AppText(
                          text: "KHQR",
                          color: Appcolors.light,
                          size: 25,
                          fontFamily: AppFonts.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // name
                      Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                              text: "THE CHIVA",
                              size: 18,
                            ),
                            selectedAccount.value == "KHR | 069 496 048"
                                ? const AppText(
                                    text: "0.00 KHR",
                                    fontFamily: AppFonts.bold,
                                    size: 20,
                                  )
                                : const AppText(
                                    text: "0.00 USD",
                                    fontFamily: AppFonts.bold,
                                    size: 20,
                                  )
                          ],
                        ),
                      ),

                      ///
                      const Divider(
                          // color: Appcolors.solid,
                          // thickness: 2,
                          // indent: 20,
                          // height: 21,
                          // endIndent: 20,
                          ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          // padding: EdgeInsets.all(4.0),
                          child: Image(
                            image: selectedAccount.value == "KHR | 069 496 048"
                                ? const AssetImage(
                                    "assets/images/png/qr_khr.jpg",
                                  )
                                : const AssetImage(
                                    "assets/images/png/qr_usd.png",
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16.0),
                    ),
                  ),
                  builder: (context) => AccountSelectionModal(
                    accounts: const [
                      {"name": "KHR", "number": "069 496 048"},
                      {"name": "USD", "number": "069 496 048"},
                    ],
                    selectedAccount: selectedAccount,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Appcolors.primaryLight.withOpacity(0.1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        selectedAccount.value.isEmpty
                            ? "Select an account"
                            : selectedAccount.value,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Appcolors.light,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 32,
                        color: Appcolors.light,
                      ),
                    ],
                  ),
                ),
              ),
              // ===== =====
              const SizedBox(height: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColumnButton(
                      icon: "assets/images/svg/payments.svg",
                      text: "Save",
                      onTab: () {},
                    ),
                    ColumnButton(
                      icon: "assets/images/svg/payments.svg",
                      text: "SET AMOUNT",
                      onTab: () {},
                    ),
                    ColumnButton(
                      icon: "assets/images/svg/payments.svg",
                      text: "SHARE LINK",
                      onTab: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnButton extends StatelessWidget {
  const ColumnButton({
    super.key,
    required this.icon,
    required this.text,
    this.onTab,
  });
  final String icon;
  final String text;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          icon: icon,
          iconSize: 26,
          iconColor: Appcolors.light,
          padding: 16,
          color: Appcolors.primaryLight.withOpacity(0.5),
          radius: 100,
          onTab: () {},
        ),
        const SizedBox(height: 8.0),
        AppText(
          text: text,
          color: Appcolors.light,
          size: 14,
        ),
      ],
    );
  }
}

class AccountSelectionModal extends StatelessWidget {
  final List<Map<String, String>> accounts;
  final RxString selectedAccount;

  const AccountSelectionModal({
    super.key,
    required this.accounts,
    required this.selectedAccount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Appcolors.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
          ),
          child: const Center(
            child: Text(
              "SELECT ACCOUNT RECEIVE",
              style: TextStyle(
                color: Appcolors.light,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        ...accounts.map(
          (account) {
            final accountLabel = "${account['name']} | ${account['number']}";
            return Obx(
              () => GestureDetector(
                onTap: () {
                  selectedAccount.value = accountLabel;
                  Navigator.pop(context);
                  log("Selected account: $accountLabel");
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Appcolors.primaryLight.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: selectedAccount.value == accountLabel
                          ? Appcolors.primary
                          : Appcolors.primary.withOpacity(0),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        value: accountLabel,
                        groupValue: selectedAccount.value,
                        onChanged: (value) {
                          selectedAccount.value = value!;
                          Navigator.pop(context);
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            accountLabel,
                            style: const TextStyle(
                              color: Appcolors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Wallet",
                            style: TextStyle(
                              color: Appcolors.solid,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
