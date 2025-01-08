import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/list_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  final String _name = "THE CHIVA";
  final String _phone = "069 496 048";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
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
                ),
                AppButton(
                  icon: "assets/images/svg/logo_ac.svg",
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
            // ===== =====
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      //===== profile =====
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Appcolors.primaryLight,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/6e/58/b7/6e58b75150c447673afca5d2f16f163c.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      // ===== name & phone =====
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: _name,
                            color: Appcolors.gold,
                            size: 20,
                          ),
                          const SizedBox(height: 8.0),
                          AppText(
                            text: _phone,
                            color: Appcolors.light,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          onTab: () {},
                          text: "Edit Profile",
                          color: Appcolors.primaryLight.withOpacity(0.5),
                          customPadding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Appcolors.light,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: AppButton(
                          width: double.infinity,
                          onTab: () {},
                          text: "Settings",
                          color: Appcolors.primaryLight.withOpacity(0.5),
                          customPadding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Appcolors.light,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.acledasecurities.com.kh/as/assets/image/banner-csxtrade-eng.jpg"),
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
                    height: MediaQuery.sizeOf(context).height / 1.6,
                    decoration: BoxDecoration(
                        color: Appcolors.light,
                        borderRadius: BorderRadius.circular(16.0)),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        BuildListTile(
                          tilte: "Country and Language",
                          leading: Icon(Icons.language),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Location",
                          leading: Icon(Icons.location_on_outlined),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Terms and Conditions",
                          leading: Icon(Icons.insert_drive_file_outlined),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Products & Services",
                          leading: Icon(Icons.home_work_outlined),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "FAQs",
                          leading: Icon(Icons.cable),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Invite Friends",
                          leading: Icon(Icons.person_add_alt_1_outlined),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "ACleda Bank's Stock",
                          leading: Icon(Icons.security),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Security Tips",
                          leading: Icon(Icons.language),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Contact Us (24/7)",
                          leading: Icon(Icons.phone),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                        BuildListTile(
                          tilte: "Help",
                          leading: Icon(Icons.help),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Appcolors.solid,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // ===== Log Out =====
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    decoration: BoxDecoration(
                        color: Appcolors.light,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: BuildListTile(
                        tilte: "Log Out",
                        textstyle: TextStyle(
                          fontSize: 18.0,
                          color: Appcolors.red,
                        ),
                        leading: Icon(
                          Icons.logout,
                          color: Appcolors.red,
                        ),
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Appcolors.solid,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // ===== footer =====
                  Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                    child: const Center(
                      child: Column(
                        children: [
                          AppText(
                            text: "Version 7.15",
                            color: Appcolors.solid,
                          ),
                          AppText(
                            text: "Release Date: January 01, 2025",
                            color: Appcolors.solid,
                          ),
                          AppText(
                            text: "Your ACLEDA mobile version is up to date",
                            color: Appcolors.solid,
                          ),
                          SizedBox(height: 32.0),
                          AppText(
                            text: "ACLEDA Bank Plc. -Credentials",
                            color: Appcolors.solid,
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
