import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/asset_button.dart';
import 'package:firebase/common/widgets/input_field.dart';
import 'package:firebase/features/app/app_view_model.dart';
import 'package:firebase/features/app/form/form_view_model.dart';
import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  final vm = Get.put(FormViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.all(14),
              child: GestureDetector(
                onTap: () => viewModel.page.value = 0,
                child: Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.5,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                  child: SvgPicture.asset("assets/images/arrow-left.svg"),
                ),
              ),
            ),
          title: Text(
            'Form Page',
            style: textStyle(
              fontFamily: Typographys.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 32,
              bottom: 24,
            ),
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1.5,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                      image: vm.imgUrl.isNotEmpty
                          ? DecorationImage(
                              image: NetworkImage(vm.imgUrl.value),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    alignment: Alignment.center,
                    child: vm.imgUrl.isEmpty
                        ? Text("Empty image",
                            style: textStyle(color: AppColor.primary))
                        : null,
                  ),
                ),
                const SizedBox(height: 32),
                InputField(
                  controller: vm.imageCtrl,
                  hint: "Image URL",
                  onChanged: (url) => vm.enteredImageUrl(url),
                ),
                const SizedBox(height: 16),
                InputField(
                  controller: vm.nameCtrl,
                  hint: "Coffee Name",
                ),
                const SizedBox(height: 16),
                InputField(
                  controller: vm.priceCtrl,
                  hint: "Coffee Price",
                ),
                const SizedBox(height: 16),
                InputField(
                  controller: vm.qtyCtrl,
                  hint: "Coffee Qty",
                ),
                const SizedBox(height: 32),
                AssetButton(
                  width: 200,
                  color: AppColor.primary,
                  textStyle: textStyle(color: AppColor.light),
                  text: vm.updating.value ? "Update" : "Save",
                  onTab: () => vm.actions(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
