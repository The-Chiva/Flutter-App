import 'package:flutter/material.dart';
import 'package:pet_app/components/asset_button.dart';
import 'package:pet_app/featured/app/model/cart.dart';
import 'package:pet_app/featured/app/view/cart/components/text_gradient.dart';
import 'package:pet_app/utils/coverts/converter.dart';
import 'package:pet_app/utils/theme/text_theme.dart';
import 'package:pet_app/utils/types/colors.dart';
import 'package:pet_app/utils/types/fonts.dart';

class CartComp extends StatelessWidget {
  const CartComp({super.key, required this.cart, this.onTapDelete});
  final Function()? onTapDelete;
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 118,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: PColors.stroke, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 74,
              backgroundImage: Converter().convertStringToFileImage(cart.image),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // title
                  PText(text: cart.title, fontType: Font.bold, size: 16),
                  // qty
                  textGradient("Quantity  : ", cart.qty.toString()),
                  // sub total
                  textGradient("Sub total : ", cart.subTotal.toString()),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: AssetButton(
              onTab: onTapDelete,
              icon: "assets/images/trush.svg",
              padding: 4,
            ),
          ),
        ],
      ),
    );
  }
}
