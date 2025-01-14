import 'dart:developer';

import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_footer.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_long_out.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_profile.dart';
import 'package:aceleda_bank/featured/app/menu/model/list_tile_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/list_tile.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final ListTileModel tile = ListTileModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Appcolors.primary,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  text: "Menu",
                  size: 30,
                  color: Appcolors.light,
                  fontFamily: AppFonts.medium,
                ),
                AppButton(
                  icon: "assets//mages/svg/logo_ac.svg",
                  iconSize: 35,
                  onTab: () => pageModel.page.value = 0,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== Profile =====
            ProFile(
              image: "assets/images/png/logo.png",
              name: "THE CHIVA",
              phone: "069 496 048",
            ),
            // ===== =====
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: Appcolors.light.withOpacity(0.94),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                children: [
                  // ===== banner points =====
                  Container(
                    padding: const EdgeInsets.only(right: 12.0),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/png/banner1.jpg"),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const AppText(
                          text: "You got 0 Points ",
                          color: Appcolors.light,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 230, 14, 233),
                                Appcolors.primaryLight,
                              ],
                            ),
                          ),
                          child: const AppText(
                            text: "View Details",
                            color: Appcolors.light,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // ===== setting =====
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height / 1.57,
                    decoration: BoxDecoration(
                      color: Appcolors.light,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ListView.builder(
                      itemCount: tile.listItems.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = tile.listItems[index];
                        return GestureDetector(
                          onTap: () {
                            final page = tile.listItems[index]['page'];
                            if (page != null) {
                              Get.to(page);
                            } else {
                              log("Error: Page is not defined or invalid.");
                            }
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Appcolors.strock,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: BuildListTile(
                              tilte: item['title'],
                              leading: Icon(item['icon']),
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Appcolors.solid,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  // ===== Log Out =====
                  BuildLogOut(
                    onTab: () {},
                  ),
                  const SizedBox(height: 16),
                  // ===== footer =====
                  const BuildFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
