import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.theme,
      required this.title,
      required this.index,
      required this.ontap,
      required this.selectedindex})
      : super(key: key);

  final ThemeData theme;
  final String title;
  final int index;
  Function ontap;
  int selectedindex;

  bool isSelected(int selectedindex, int index) => selectedindex == index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap(index);
      },
      child: Container(
          height: 40,
          width: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected(selectedindex, index)
                  ? theme.primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            title,
            style: theme.textTheme.headline6!.copyWith(
                color: isSelected(selectedindex, index) ? Colors.white : null),
          )),
    );
  }
}
