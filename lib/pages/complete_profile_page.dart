import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/back_nav_widget.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';
import 'package:music_app/widgets/textfield_widget.dart';
import 'package:music_app/widgets/title_widget.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final List<String> _items = ['+1', '+42', '+62', '+17', '+63'];
  String selectedGender = 'Male';
  final List<String> genders = ["Male", "Female"];
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameControler = TextEditingController();
  late String value;
  String selectedCountryCode = '+1';
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 50,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const TitleWidget(title: 'Complete Your Profile'),
                const SizedBox(
                  height: 5,
                ),
                const SubTitleWidget(
                    title:
                        "Don't worry, only you can see your personal data. No one else will be able to see it."),
                const SizedBox(
                  height: 50,
                ),
                profileAvatar(onTap: () {}),
                const SizedBox(
                  height: 50,
                ),
                label('Name'),
                const SizedBox(
                  height: 5,
                ),
                textfield(TextInputType.text, nameControler, 'Ex. John Doe'),
                const SizedBox(
                  height: 20,
                ),
                label('Phone Number'),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100,
                  ),
                  child: Row(
                    children: [
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropdownButton<String>(
                            value: selectedCountryCode,
                            menuMaxHeight: 150,
                            borderRadius: BorderRadius.circular(10),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCountryCode = newValue!;
                              });
                            },
                            items: _items
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Container(width: 1, color: Colors.grey.shade100),
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.phone,
                          autofocus: false,
                          decoration: const InputDecoration(
                            hintText: 'Enter Phone Number',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                label('Gender'),
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
                const SizedBox(
                  height: 50,
                ),
                buttonWidget(context, 'Complete Profile', onTap: () {})
              ],
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
        CircleAvatar(
          radius: 70,
          backgroundColor: Colors.grey.shade100,
          child: const Icon(
            MingCute.user_3_fill,
            size: 65,
            color: Constant.mainColor,
          ),
        ),
        Positioned.directional(
          textDirection: TextDirection.ltr,
          bottom: 8,
          end: 5,
          child: InkWell(
            onTap: onTap,
            child: const CircleAvatar(
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
      ],
    );
  }
}
