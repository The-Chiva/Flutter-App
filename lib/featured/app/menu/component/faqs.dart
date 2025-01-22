import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AppText(text: "Term and condition"),
      ),
    );
  }
}