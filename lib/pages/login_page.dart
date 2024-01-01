import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/divider_widget.dart';
import 'package:music_app/widgets/forgot_password_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/other_signin_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';
import 'package:music_app/widgets/textfield_widget.dart';
import 'package:music_app/widgets/title_widget.dart';
import 'package:music_app/widgets/to_signup_signin_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TitleWidget(title: "Sign In"),
                const SizedBox(
                  height: 15,
                ),
                const SubTitleWidget(
                    title: "Hi! Welcome back, you've been missed"),
                const SizedBox(
                  height: 70,
                ),
                label('Email'),
                const SizedBox(
                  height: 5,
                ),
                textfield(TextInputType.emailAddress, emailControler,
                    'example@email.com'),
                const SizedBox(
                  height: 25,
                ),
                label('Password'),
                const SizedBox(
                  height: 5,
                ),
                textfieldPassword(passwordControler),
                forgotPassword(context),
                const SizedBox(
                  height: 15,
                ),
                buttonWidget(context, 'Sign In', onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                const DividerWidget(label: 'Or sign in with'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    otherSignIn('assets/images/apple.png', onTap: () {}),
                    const SizedBox(
                      width: 20,
                    ),
                    otherSignIn('assets/images/google.png', onTap: () {}),
                    const SizedBox(
                      width: 20,
                    ),
                    otherSignIn('assets/images/facebook.png', onTap: () {}),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                toSignUp(context, "Don't have an account", "Sign Up")
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField textfieldPassword(TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: hidePassword,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          icon: hidePassword
              ? const Icon(
                  AntDesign.eye_invisible_outline,
                  color: Colors.black,
                )
              : const Icon(
                  AntDesign.eye_outline,
                  color: Colors.black,
                ),
          onPressed: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
        ),
      ),
    );
  }
}
