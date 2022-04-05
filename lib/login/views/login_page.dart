import 'package:finance_app_ui/hompage/views/homepage.dart';
import 'package:finance_app_ui/login/widget/password_input_widget.dart';
import 'package:flutter/material.dart';

import '../widget/email_input_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const route = '/loginpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _LoginPageView(),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}

class _LoginPageView extends StatelessWidget {
  const _LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 80,
              ),
              EmailInputField(
                  theme: theme,
                  icon: Icons.email_outlined,
                  title: "Email address"),
              const SizedBox(
                height: 25,
              ),
              PasswordInputField(
                theme: theme,
                icon: Icons.lock_outline,
                title: "Password",
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).primaryColor),
                  child: Center(
                    child: Text(
                      "Login",
                      style: theme.textTheme.headline1!
                          .copyWith(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(HomePage.route);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Singup",
                    style: theme.textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Forgot Password?",
                    style: theme.textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
