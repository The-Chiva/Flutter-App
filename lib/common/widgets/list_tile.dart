import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    super.key,
    required this.tilte,
    required this.leading,
    required this.icon,
    this.textstyle,
  });
  final String tilte;
  final Widget leading;
  final Widget icon;
  final TextStyle? textstyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tilte,
        style: textstyle,
      ),
      leading: leading,
      trailing: icon,
    );
  }
}
