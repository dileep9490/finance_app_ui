import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const route = '/homepage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("HomePage"),
    );
  }
}
