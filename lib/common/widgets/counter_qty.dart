import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/asset_button.dart';
import 'package:flutter/material.dart';

class CounterQty extends StatelessWidget {
  const CounterQty({super.key, required this.qty});

  final int qty;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade100,
          width: 1.5,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AssetButton(
            icon: "assets/images/minus.svg",
          ),
          AssetButton(
            isOutlinButton: true,
            customPadding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 6,
            ),
            text: qty.toString(),
            textStyle: textStyle(),
          ),
          const AssetButton(
            icon: "assets/images/plus.svg",
          ),
        ],
      ),
    );
  }
}