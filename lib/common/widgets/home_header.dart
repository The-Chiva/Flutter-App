import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
   const HomeHeader({super.key, required this.count});
   final int count;

  @override
  Widget build(BuildContext context) {
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/logo-image.svg'),
            const SizedBox(height: 8),
            Text(
              'Kindly select your preferred coffee type',
              style: textStyle(fontSize: 12),
            ),
          ],
        ),
        Container(
          width: 32,
          height: 32,
          alignment: Alignment.topRight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bag.png"),
            ),
          ),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: AppColor.success,
            child: Text(
              count.toString(),
              style: textStyle(
                fontSize: 12,
                color: AppColor.light,
              ),
            ),
          ),
        ),
      ],
    );
  }
}