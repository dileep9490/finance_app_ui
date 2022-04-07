import 'package:finance_app_ui/recent_transactions/views/recent_transactions_page.dart';
import 'package:flutter/material.dart';

import '../widgets/overview_transaction_widget.dart';
import '../widgets/user_info_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const route = '/homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        body: const _HomePageView(),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: BottomAppBar(
            color: theme.backgroundColor,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    icon: const Icon(
                      Icons.home_outlined,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(
                      Icons.credit_card_outlined,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RecentTransactionPage.route);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 4, left: 20, right: 20),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(
                      Icons.currency_rupee_outlined,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              UserInfoWidget(theme: theme),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: theme.textTheme.headline1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.notifications_active_outlined),
                      ],
                    ),
                    Text(
                      "Sept 13,2020",
                      style: theme.textTheme.headline1!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Overview_transaction_widget(
                theme: theme,
                icon: Icons.arrow_upward,
                title: "Sent",
                subtitle: "Sent payment to Clients",
                amount: "150",
              ),
              const SizedBox(
                height: 20,
              ),
              Overview_transaction_widget(
                  title: "Recieve",
                  subtitle: "Reciving Salary from company",
                  theme: theme,
                  amount: "25",
                  icon: Icons.arrow_downward),
              const SizedBox(
                height: 20,
              ),
              Overview_transaction_widget(
                  title: "Loan",
                  subtitle: "Loan for the car",
                  theme: theme,
                  amount: "25",
                  icon: Icons.local_atm)
            ],
          ),
        ),
      ],
    );
  }
}
