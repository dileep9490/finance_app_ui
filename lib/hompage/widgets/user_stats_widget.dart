import 'package:flutter/material.dart';

class UserStatWidget extends StatelessWidget {
  const UserStatWidget({
    Key? key,
    required this.theme,
    required this.amount,
    required this.title,
  }) : super(key: key);

  final ThemeData theme;
  final String amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$$amount",
          style:
              theme.textTheme.headline3!.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: theme.textTheme.headline6,
        )
      ],
    );
  }
}
