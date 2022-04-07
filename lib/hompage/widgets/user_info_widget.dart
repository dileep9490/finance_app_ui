import 'package:finance_app_ui/hompage/widgets/straight_line_widget.dart';
import 'package:finance_app_ui/hompage/widgets/user_stats_widget.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.dashboard_outlined),
              Icon(Icons.more_vert),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 100,
            child: CircleAvatar(
              child: Image.asset('assets/images/profile.png'),
              radius: 45,
            ),
          ),
          Text(
            "Jermy Bablo",
            style: theme.textTheme.headline3!.copyWith(fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text("UI/UX designer", style: theme.textTheme.headline6),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserStatWidget(
                theme: theme,
                amount: "8000",
                title: "Income",
              ),
              StraightLineWidget(theme: theme),
              UserStatWidget(
                theme: theme,
                amount: "5050",
                title: "Expenses",
              ),
              StraightLineWidget(theme: theme),
              UserStatWidget(
                theme: theme,
                amount: "890",
                title: "Loan",
              ),
            ],
          )
        ],
      ),
    );
  }
}
