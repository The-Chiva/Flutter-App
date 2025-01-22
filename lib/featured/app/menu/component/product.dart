import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class ProductService extends StatelessWidget {
  const ProductService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AppText(text: "product and service"),
      ),
    );
  }
}