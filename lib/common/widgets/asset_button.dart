import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetButton extends StatelessWidget {
  const AssetButton({
    super.key,
    this.icon,
    this.text,
    this.onTab,
    this.width,
    this.height,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.color,
    this.padding = 12,
    this.iconColor,
    this.radius = 12,
    this.isOutlinButton = false,
    this.iconSize,
    this.textStyle,
    this.customPadding,
  });

  final String? icon, text;
  final void Function()? onTab;
  final double? width, height;
  final MainAxisAlignment mainAxisAlignment;
  final Color? color;
  final double padding;
  final Color? iconColor;
  final double radius;
  final double? iconSize;
  final bool isOutlinButton;
  final EdgeInsetsGeometry? customPadding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: !isOutlinButton
              ? null
              : Border.all(
                  color: Colors.grey.shade100,
                  width: 1.5,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: customPadding ?? EdgeInsets.all(padding),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              if (icon != null)
                SvgPicture.asset(
                  icon!,
                  color: iconColor,
                  width: iconSize,
                  height: iconSize,
                ),
              Text(
                text ?? "",
                style: textStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
