import 'package:flutter/material.dart';

class Overview_transaction_widget extends StatelessWidget {
  const Overview_transaction_widget(
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
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 30,
            ),
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
                style: theme.textTheme.headline2!.copyWith(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
