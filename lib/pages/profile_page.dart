import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/button_bottom_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/textfield_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  String selectedGender = 'Male';
  final List<String> genders = ["Male", "Female"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'Your Profile'),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                profileAvatar(onTap: () {}),
                const SizedBox(
                  height: 50,
                ),
                label('Name'),
                const SizedBox(
                  height: 5,
                ),
                textfield(TextInputType.text, nameControler, 'Esther Howard'),
                const SizedBox(
                  height: 20,
                ),
                label('Phone Number'),
                const SizedBox(
                  height: 5,
                ),
                textfieldPhone(phoneControler),
                const SizedBox(
                  height: 20,
                ),
                label('Email'),
                const SizedBox(
                  height: 5,
                ),
                textfield(TextInputType.emailAddress, emailControler,
                    'example@email.com'),
                const SizedBox(
                  height: 20,
                ),
                label('Gender'),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField<String>(
                  isDense: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  hint: const Text('Select'),
                  itemHeight: 50,
                  items: genders
                      .map((gender) => DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          ))
                      .toList(),
                  onChanged: (newValue) =>
                      setState(() => selectedGender = newValue!),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          buttonBottom(context, 'Update', onTap: () {})
        ]),
      ),
    );
  }

  TextField textfieldPhone(TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: '00012324',
        contentPadding: const EdgeInsets.only(
          left: 20,
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIconConstraints: const BoxConstraints(),
        suffixIcon: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Change',
              style: TextStyle(
                color: Constant.mainColor,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stack profileAvatar({required VoidCallback onTap}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          radius: 70,
          backgroundImage:
              NetworkImage('https://reqres.in/img/faces/2-image.jpg'),
        ),
        Positioned.directional(
          textDirection: TextDirection.ltr,
          bottom: 8,
          end: 0,
          child: InkWell(
            onTap: onTap,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 19,
              child: CircleAvatar(
                backgroundColor: Constant.mainColor,
                radius: 17,
                child: Icon(
                  MingCute.edit_3_line,
                  size: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
