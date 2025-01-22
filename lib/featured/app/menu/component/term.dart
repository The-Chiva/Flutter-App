import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AppText(text: "Term and condition"),
      ),
    );
  }
}