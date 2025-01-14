import 'package:aceleda_bank/common/widgets/app_bar.dart';
import 'package:aceleda_bank/featured/app/app.dart';
import 'package:aceleda_bank/featured/app/menu/model/list_tile_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageLogic extends StatelessWidget {
  LanguageLogic({super.key});
  // final ListTileModel tile = ListTileModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 70),
        child: BuildAppBar(
          title: "Country and Language",
          titleSize: 18,
          onTap: () => Get.to(() => App()),
        ),
      ),
      // body: Column(
      //   children: List.generate(
      //     tile.listItems.length,
      //     (index) => Container(
      //       height: 200,
      //       width: double.infinity,
      //       color: Colors.amber,
      //     ),
      //   ),
      // ),
    );
  }
}
