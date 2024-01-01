import 'package:flutter/material.dart';
import 'package:music_app/pages/new_password_page.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/back_nav_widget.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';
import 'package:music_app/widgets/title_widget.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: backNavWidget(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const TitleWidget(title: 'Verify Code'),
              const SizedBox(
                height: 10,
              ),
              const SubTitleWidget(
                  title: 'Please enter the code we just sent to email'),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'example@email.com',
                style: TextStyle(
                    color: Constant.mainColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _codeField(context, true),
                  _codeField(context, false),
                  _codeField(context, false),
                  _codeField(context, false),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const SubTitleWidget(title: "Didn't receive OTP?"),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Resend code',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 0.5,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buttonWidget(context, 'Verify', onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPasswordPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _codeField(BuildContext context, bool autoFocus) {
  return Container(
    height: MediaQuery.of(context).size.shortestSide * 0.12,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio: 1.2,
      child: TextField(
        autofocus: autoFocus,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        onChanged: (value) {
          if (value.isNotEmpty) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}
