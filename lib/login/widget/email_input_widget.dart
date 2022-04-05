import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField(
      {Key? key, required this.theme, required this.icon, required this.title})
      : super(key: key);

  final ThemeData theme;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: theme.textTheme.headline5!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                icon,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                  width: 250,
                  height: 30,
                  child: TextFormField(
                    style: theme.textTheme.headline2!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ))
            ],
          )
        ]));
  }
}
