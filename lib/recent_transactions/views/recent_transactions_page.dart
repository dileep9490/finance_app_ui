import 'package:flutter/material.dart';

import '../../recent_transactions/widgets/transaction_widget.dart';
import '../widgets/filter_options_widget.dart';

class RecentTransactionPage extends StatelessWidget {
  const RecentTransactionPage({Key? key}) : super(key: key);
  static const route = "/transaction_page";

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            margin: const EdgeInsets.only(left: 10, top: 30),
            child: Icon(
              Icons.arrow_back_ios,
              color: theme.iconTheme.color,
            ),
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20, top: 30),
              child: Icon(
                Icons.search_outlined,
                size: 30,
                color: theme.iconTheme.color,
              ))
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 30),
        height: 60,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(
            "See Details",
            style: theme.textTheme.headline1!
                .copyWith(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const _RecentTransactionPageView(),
    );
  }
}

class _RecentTransactionPageView extends StatelessWidget {
  const _RecentTransactionPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Transactions",
                  style: theme.textTheme.headline1!.copyWith(fontSize: 26),
                ),
                Text(
                  "See all",
                  style: theme.textTheme.headline6!.copyWith(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Filteroptions(theme: theme),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Today",
              style: theme.textTheme.headline1,
            ),
            SizedBox(
              height: 20,
            ),
            TransactionWidget(
                title: "Payment",
                subtitle: "Payment from andrea",
                theme: theme,
                amount: "30.00",
                icon: Icons.mail_outline)
          ],
        ));
  }
}
