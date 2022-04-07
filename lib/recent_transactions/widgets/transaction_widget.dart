import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.theme,
      required this.amount,
      required this.icon})
      : super(key: key);

  final ThemeData theme;
  final String title;
  final String subtitle;
  final String amount;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            icon,
            size: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.headline2!.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subtitle,
                  style: theme.textTheme.headline5!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "\$$amount",
                style: theme.textTheme.headline2!
                    .copyWith(fontSize: 16, color: theme.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
