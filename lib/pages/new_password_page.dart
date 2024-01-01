import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/pages/complete_profile_page.dart';
import 'package:music_app/widgets/back_nav_widget.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';
import 'package:music_app/widgets/title_widget.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool hidePassword = true;
  bool hidePassword2 = true;
  TextEditingController passwordControler = TextEditingController();
  TextEditingController confirmPasswordControler = TextEditingController();
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const TitleWidget(title: 'New Password'),
            const SizedBox(
              height: 5,
            ),
            const SubTitleWidget(
                title:
                    'Your new password must be different from previously used passwords.'),
            const SizedBox(
              height: 50,
            ),
            label('Password'),
            textfieldPassword(passwordControler),
            const SizedBox(
              height: 20,
            ),
            label('Confirm Password'),
            textfieldConfirmPassword(confirmPasswordControler),
            const SizedBox(
              height: 50,
            ),
            buttonWidget(context, 'Create New Password', onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompleteProfilePage()));
            }),
          ],
        ),
      )),
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

  TextField textfieldConfirmPassword(TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: hidePassword2,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          icon: hidePassword2
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
              hidePassword2 = !hidePassword2;
            });
          },
        ),
      ),
    );
  }
}
