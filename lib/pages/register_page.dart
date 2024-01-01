import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/divider_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/other_signin_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';
import 'package:music_app/widgets/textfield_widget.dart';
import 'package:music_app/widgets/title_widget.dart';
import 'package:music_app/widgets/to_signup_signin_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  bool checkedValueTM = false;
  TextEditingController nameControler = TextEditingController();
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
              vertical: 50,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TitleWidget(title: "Create Account"),
                const SizedBox(
                  height: 15,
                ),
                const SubTitleWidget(
                    title:
                        "Fill your information below or register with your social account."),
                const SizedBox(
                  height: 40,
                ),
                label('Name'),
                const SizedBox(
                  height: 5,
                ),
                textfield(TextInputType.text, nameControler, 'Ex. John Doe'),
                const SizedBox(
                  height: 25,
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
                textfieldPassword(passwordControler),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      value: checkedValueTM,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
                      checkColor: Colors.white,
                      activeColor: Constant.mainColor,
                      onChanged: (bool? value) {
                        setState(() {
                          checkedValueTM = value!;
                        });
                      },
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Agree with ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms & Condition',
                            style: TextStyle(
                              fontSize: 16,
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                buttonWidget(context, 'Sign Up', onTap: () {}),
                const SizedBox(
                  height: 40,
                ),
                const DividerWidget(label: 'Or sign up with'),
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
                toSignUp(context, "Already have an account?", "Sign In")
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
