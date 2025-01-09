import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_app/components/asset_button.dart';
import 'package:pet_app/featured/app/controller/cart_controller.dart';
import 'package:pet_app/featured/app/model/pet.dart';
import 'package:pet_app/utils/theme/text_theme.dart';
import 'package:pet_app/utils/types/colors.dart';
import 'package:pet_app/utils/types/fonts.dart';
import 'package:see_more/see_more.dart';

class DetailBody extends StatelessWidget {
  DetailBody({super.key, required this.pet});
  final Pet pet;
  final cartCtr = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 380),
      child: Obx(
        () => Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 12, left: 32, right: 32),
          decoration: BoxDecoration(
            color: PColors.light,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // line
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 64,
                  decoration: BoxDecoration(
                    border: Border.all(color: PColors.stroke, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              // title
              PText(text: pet.name, fontType: Font.bold, size: 24),
              const SizedBox(height: 16),
              // price & qty state
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  PText(
                    text:
                        '\$ ${cartCtr.subTotal.value <= 0.0 ? pet.price : cartCtr.subTotal.value}',
                    fontType: Font.medium,
                    size: 20,
                    color: PColors.primary,
                  ),
                  // qty counter
                  Row(
                    children: [
                      AssetButton(
                        onTab: () async =>
                            cartCtr.countQty(false, pet.qty, pet.price),
                        width: 24,
                        height: 24,
                        text: "-",
                        radius: 8,
                        padding: 0,
                        textSize: 16,
                        textColor: PColors.dark,
                        isOutlinButton: true,
                      ),
                      const SizedBox(width: 6),
                      AssetButton(
                        width: 24,
                        height: 24,
                        text: cartCtr.qty.value.toString(),
                        radius: 8,
                        padding: 0,
                        textSize: 16,
                        textColor: PColors.primary,
                      ),
                      const SizedBox(width: 6),
                      AssetButton(
                        onTab: () async =>
                            cartCtr.countQty(true, pet.qty, pet.price),
                        width: 24,
                        height: 24,
                        text: "+",
                        radius: 8,
                        padding: 0,
                        textSize: 16,
                        textColor: PColors.dark,
                        isOutlinButton: true,
                      )
                    ],
                  )
                ],
              ),
              // about the breed
              const SizedBox(height: 24),
              const PText(
                text: "About the Breed",
                fontType: Font.medium,
                size: 20,
              ),
              const SizedBox(height: 16),
              SeeMoreWidget(
                pet.description,
                textStyle: TextStyle(
                  fontSize: 16,
                  color: PColors.dark,
                  fontFamily: Font.medium,
                ),
                animationDuration: const Duration(milliseconds: 200),
                seeMoreText: "... See More",
                seeMoreStyle: TextStyle(
                  fontSize: 16,
                  color: PColors.primary,
                  fontFamily: Font.medium,
                ),
                seeLessText: ". See Less",
                seeLessStyle: TextStyle(
                  fontSize: 16,
                  color: PColors.primary,
                  fontFamily: Font.medium,
                ),
                trimLength: 240,
              ),
            ],
          ),
        ),
      ),
      // bottom nav
    );
  }
}
