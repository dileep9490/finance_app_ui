import 'package:finance_app_ui/const.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField(
      {Key? key, required this.theme, required this.icon, required this.title})
      : super(key: key);

  final ThemeData theme;
  final IconData icon;
  final String title;

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 350,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            widget.title,
            style: widget.theme.textTheme.headline5!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                widget.icon,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                height: 30,
                child: TextFormField(
                  obscureText: showPassword,
                  style: widget.theme.textTheme.headline2!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              GestureDetector(
                child: showPassword
                    ? const Icon(Icons.remove_red_eye_outlined)
                    : const Icon(Icons.visibility_off_outlined),
                onTap: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              )
            ],
          )
        ]));
  }
}
