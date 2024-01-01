import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_app/pages/login_page.dart';
import 'package:music_app/pages/register_page.dart';
import 'package:music_app/utils/constant.dart';

Text toSignUp(BuildContext context, String label, String labelActive) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: "$label ",
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              (labelActive == 'Sign Up')
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ))
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
            },
          text: labelActive,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            decorationThickness: 1,
            color: Constant.mainColor,
            decorationStyle: TextDecorationStyle.solid,
            decoration: TextDecoration.underline,
            decorationColor: Constant.mainColor,
          ),
        ),
      ],
    ),
  );
}
