import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/counter_qty.dart';
import 'package:firebase/core/models/product_model.dart';
import 'package:firebase/features/app/app_view_model.dart';
import 'package:firebase/features/app/form/form_view_model.dart';
import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardPage extends StatelessWidget {
  CardPage({super.key});

  final visible = true.obs;
  final vm = Get.put(FormViewModel());
  final product = Get.put(ProductModel);

  @override
  Widget build(BuildContext context) {
    const String src =
        'https://img.freepik.com/free-photo/iced-coffee_1339-2845.jpg?t=st=1731315431~exp=1731319031~hmac=f42ec0db9cdc0f8696f604a0098c11003599411accd51c2cf9bf366f06ddf754&w=360'; // replace with your image source
    const String name = 'Coffee name';
    const double price = 3.15;
    const int qty = 2;
    return Obx(
      () => Visibility(
        visible: visible.value,
        child: Scaffold(
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
              'Card',
              style: textStyle(
                fontFamily: Typographys.bold,
                fontSize: 24,
              ),
            ),
            actions: [
              Text(
                '1',
                style: textStyle(
                  fontFamily: Typographys.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'Items',
                style: textStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: List.generate(
                10,
                (index) => Container(
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.light,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 0.2),
                        spreadRadius: 1,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // image
                      Expanded(
                        flex: 2,
                        child: Image.network(
                          src,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 18),
                      // detail
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // name
                            Text(
                              name,
                              style: textStyle(
                                  fontSize: 18, fontFamily: Typographys.bold),
                            ),
                            const Spacer(),
                            Text(
                              '\$${price.toStringAsFixed(2)}',
                              style: textStyle(
                                fontSize: 16,
                                fontFamily: Typographys.bold,
                              ),
                            ),
                            const Spacer(),
                            const CounterQty(qty: qty),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomSheet: Container(
            width: double.infinity,
            height: 90,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal", style: textStyle()),
                    Text(
                      "\$${price * qty}",
                      style: textStyle(
                        fontSize: 18,
                        fontFamily: Typographys.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}