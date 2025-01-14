import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/app_view_model.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_footer.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_long_out.dart';
import 'package:aceleda_bank/featured/app/menu/component/build_profile.dart';
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
            // ===== Profile =====
            ProFile(
              name: _name,
              phone: _phone,
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
                    height: MediaQuery.sizeOf(context).height / 1.69,
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
