import 'package:aceleda_bank/common/widgets/app_bar.dart';
import 'package:aceleda_bank/common/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class ContractUs extends StatelessWidget {
  const ContractUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: BuildAppBar(
          title: "Contract Us (24/7)",
          titleSize: 24,
        ),
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: const [
              BuildListTile(
                leading: Icon(Icons.message),
                tilte: "015 994 444",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
              BuildListTile(
                leading: Icon(Icons.phone),
                tilte: "023 999 233",
              ),
            ],
          )
        ],
      ),
    );
  }
}
