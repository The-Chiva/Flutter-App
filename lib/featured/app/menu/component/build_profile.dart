import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:flutter/material.dart';

class ProFile extends StatelessWidget {
  const ProFile({
    super.key,
    required String name,
    required String phone,
  })  : _name = name,
        _phone = phone;

  final String _name;
  final String _phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              //===== profile =====
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Appcolors.primaryLight,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/6e/58/b7/6e58b75150c447673afca5d2f16f163c.jpg"),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              // ===== name & phone =====
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: _name,
                    color: Appcolors.gold,
                    size: 20,
                  ),
                  const SizedBox(height: 8.0),
                  AppText(
                    text: _phone,
                    color: Appcolors.light,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onTab: () {},
                  text: "Edit Profile",
                  color: Appcolors.primaryLight.withOpacity(0.5),
                  customPadding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Appcolors.light,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: AppButton(
                  width: double.infinity,
                  onTab: () {},
                  text: "Settings",
                  color: Appcolors.primaryLight.withOpacity(0.5),
                  customPadding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Appcolors.light,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
