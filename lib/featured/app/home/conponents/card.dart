import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class CardSevices extends StatelessWidget {
  const CardSevices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Appcolors.primary,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 16, bottom: 30),
            width: double.infinity,
            height: 140,
            decoration: const BoxDecoration(
              color: Appcolors.primary,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context, index) => Container(
                width: 180,
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Appcolors.primaryLight.withOpacity(0.5),
                      Appcolors.light.withOpacity(0.5),
                      Appcolors.gold.withOpacity(0.5),
                    ],
                    end: Alignment.bottomRight,
                    begin: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  // color: Appcolors.primaryLight,
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/png/logo.png",
                    ),
                    opacity: 0.5,
                    alignment: Alignment.bottomRight,
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Row(
                  children: [
                    AppButton(
                      icon: "assets/images/svg/food.svg",
                      iconSize: 40,
                    ),
                    SizedBox(height: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "Public Servers",
                          color: Appcolors.light,
                          size: 14,
                        ),
                        AppText(
                          text: "Order your preferred\ngoods here",
                          color: Appcolors.light,
                          size: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // TODO: recent transactions
          Container(
            padding: const EdgeInsets.only(bottom: 16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 5, 43, 96),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: AppText(
                    text: "Recent Transactions",
                    size: 20,
                    color: Appcolors.light,
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(left: 12),
                      padding: const EdgeInsets.only(bottom: 16),
                      width: 120,
                      decoration: BoxDecoration(
                        color: Appcolors.light,
                        // borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/png/logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const AppText(
                            text: "069496048",
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
