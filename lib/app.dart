import 'package:finance_app_ui/const.dart';
import 'package:finance_app_ui/login/views/login_page.dart';
import 'package:finance_app_ui/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Finance App",
      onGenerateRoute: RouteManager.generateRoute,
      initialRoute: LoginPage.route,
      theme: ThemeData(
        backgroundColor: backgroudColor,
        cardColor: lightblue,
        primaryColor: blue,
        textTheme: const TextTheme(
            headline1: TextStyle(
                color: blue, fontSize: 30, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                color: darkText, fontWeight: FontWeight.w900, fontSize: 20),
            headline3: TextStyle(
                color: blue, fontSize: 18, fontWeight: FontWeight.w500),
            headline4: TextStyle(color: lightText, fontSize: 16),
            headline5: TextStyle(color: lightText2, fontSize: 16)),
      ),
    );
  }
}
