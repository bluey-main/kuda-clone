import 'package:flutter/material.dart';
import '../widgets/custom_list_tile.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CustomListTile(),
          CustomListTile(),
          CustomListTile(),
          CustomListTile(),
          CustomListTile(),
          CustomListTile(),
          CustomListTile(),
        ],
      ),
    );
  }
}
