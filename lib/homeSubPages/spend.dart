import 'package:flutter/material.dart';

import '../components/amount_component.dart';
import '../widgets/custom_icon_text_tile_row.dart';
import '../components/transction_list_component.dart';

class Spend extends StatelessWidget {
  const Spend({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: const [
          AmountComponent(),
          CustomTextTileRow(),
          TransactionList(),
        ],
      ),
    );
  }
}
