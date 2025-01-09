import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/counter_qty.dart';
import 'package:firebase/core/models/product_model.dart';
import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.product, this.onLongPress, this.onTap});

  final ProductModel product;
  final void Function()? onLongPress;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.light,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ) ,
            ),
          ),
          const SizedBox(height: 12),
          // title and price and qty
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name
                Text(product.name,
                    style: textStyle(fontFamily: Typographys.light)),
                const SizedBox(height: 4),
                // price
                Text(
                  "\$ ${product.price}",
                  style: textStyle(fontFamily: Typographys.semiBold),
                ),
                const SizedBox(height: 12),
                // quantity
                CounterQty(qty: product.qty),
              ],
            ),
          ),
        ],
      ),
    );
  }
}