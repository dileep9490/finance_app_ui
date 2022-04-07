import 'package:finance_app_ui/hompage/views/homepage.dart';
import 'package:finance_app_ui/login/views/login_page.dart';
import 'package:finance_app_ui/transactions/views/recent_transactions_page.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {


    switch (settings.name) {
      case (HomePage.route):
        return MaterialPageRoute(builder: (context) => const HomePage());

      case (RecentTransactionPage.route):
        return MaterialPageRoute(
            builder: (context) => const RecentTransactionPage());

      case (LoginPage.route):
      default:
        return MaterialPageRoute(builder: (context) => const LoginPage());
    }
  }
}
