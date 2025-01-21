import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/app_bar.dart';
import 'package:aceleda_bank/featured/app/app.dart';
import 'package:aceleda_bank/language/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/container_lang.dart';

class LanguageLogic extends StatefulWidget {
  const LanguageLogic({super.key});

  @override
  State<LanguageLogic> createState() => _LanguageLogicState();
}

class _LanguageLogicState extends State<LanguageLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 70),
        child: BuildAppBar(
          title: 'CountryLanguage'.tr,
          titleSize: 18,
          onTap: () => Get.to(() => App()),
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            ContainerLang(
              // onTap: () => changeLanguage('km_KH', Locale('km', 'KH')),
              onTap: () => langCtr.changeLanguage('km_KH', Locale('km', 'KH')),
              image: "assets/images/png/flag_cambodia.png",
              name: "Khmer",
              language: "ភាសាខ្មែរ",
              color: langCtr.selectedLanguage.value == 'km_KH'
                  ? Appcolors.solid
                  : Appcolors.dark,
            ),
            ContainerLang(
              onTap: () => langCtr.changeLanguage('en_US', Locale('en', 'US')),
              image: "assets/images/png/flag_english.jpeg",
              name: "English",
              language: "English",
              color: langCtr.selectedLanguage.value == 'en_US'
                  ? Appcolors.solid
                  : Appcolors.dark,
            ),
          ],
        ),
      ),
    );
  }
}
