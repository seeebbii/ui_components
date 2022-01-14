import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle style;
  const AuthButton(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style,
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: style,
          ),
        ),
      ),
    );
  }
}
