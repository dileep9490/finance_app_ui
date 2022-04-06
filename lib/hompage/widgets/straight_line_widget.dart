import 'package:flutter/material.dart';

class StraightLineWidget extends StatelessWidget {
  const StraightLineWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 0.5,
      color: theme.dividerColor,
    );
  }
}
