

import 'package:finance_app_ui/recent_transactions/widgets/rounded_button_widget.dart';
import 'package:flutter/material.dart';

class Filteroptions extends StatefulWidget {
  const Filteroptions({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  State<Filteroptions> createState() => _FilteroptionsState();
}

class _FilteroptionsState extends State<Filteroptions> {
  int mainindex = 0;
  onSelected(int selectedIndex) {
    setState(() {
      mainindex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          theme: widget.theme,
          title: "All",
          index: 0,
          selectedindex: mainindex,
          ontap: onSelected,
        ),
        const SizedBox(
          width: 20,
        ),
        RoundedButton(
          theme: widget.theme,
          title: "Income",
          selectedindex: mainindex,
          index: 1,
          ontap: onSelected,
        ),
        const SizedBox(
          width: 20,
        ),
        RoundedButton(
          theme: widget.theme,
          title: "Expense",
          index: 2,
          selectedindex: mainindex,
          ontap: onSelected,
        )
      ],
    );
  }
}
