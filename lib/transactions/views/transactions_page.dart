import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);
  static const route = "/transaction_page";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _TransactionPageView(),
    );
  }
}

class _TransactionPageView extends StatelessWidget {
  const _TransactionPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Transaction Page"),
    );
  }
}
