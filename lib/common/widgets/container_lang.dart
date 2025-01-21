import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/styles/fonts/app_font.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class ContainerLang extends StatelessWidget {
  const ContainerLang(
      {super.key,
      required this.onTap,
      required this.image,
      required this.name,
      required this.language,
      this.color = Appcolors.dark});

  final Function() onTap;
  final String image;
  final String name;
  final String language;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        margin: const EdgeInsets.only(top: 8.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
          color: Appcolors.light,
        ),
        child: Row(
          children: [
            // image
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: 16.0),
            // name
            AppText(
              text: name,
              color: color,
            ),
            const Spacer(),
            // language
            AppText(
              text: language,
              fontFamily: AppFonts.boldKh,
              color: Appcolors.solid,
            )
          ],
        ),
      ),
    );
  }
}
