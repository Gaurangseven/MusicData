import 'package:flutter/material.dart';
import 'package:music_app/pages/verify_page.dart';
import 'package:music_app/utils/constant.dart';

Align forgotPassword(BuildContext context) {
  return Align(
    alignment: Alignment.topRight,
    child: TextButton(
      onPressed: () {
        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyPage(),
                      ));
      },
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          shadows: [
            Shadow(
              offset: Offset(0, -3),
              color: Constant.mainColor,
            )
          ],
          decorationThickness: 1,
          color: Colors.transparent,
          fontWeight: FontWeight.w700,
          decorationStyle: TextDecorationStyle.solid,
          decoration: TextDecoration.underline,
          decorationColor: Constant.mainColor,
        ),
      ),
    ),
  );
}
