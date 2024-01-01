import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/button_bottom_widget.dart';
import 'package:music_app/widgets/label_widget.dart';
import 'package:music_app/widgets/textfield_widget.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController numberControler = TextEditingController();
  TextEditingController expiredControler = TextEditingController();
  TextEditingController cvvControler = TextEditingController();
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'Add Card'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  cardWidget(context, '4716 9627 1635 8047', 'Card holder name',
                      'Esther Howard', 'Expired date', '02/30'),
                  const SizedBox(
                    height: 30,
                  ),
                  label('Card Holder Name'),
                  const SizedBox(
                    height: 5,
                  ),
                  textfield(TextInputType.text, nameControler, 'Esther Howard'),
                  const SizedBox(
                    height: 20,
                  ),
                  label('Card Number'),
                  const SizedBox(
                    height: 5,
                  ),
                  textfield(TextInputType.text, numberControler,
                      '4716 9627 1635 8047'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            label('Expired Date'),
                            const SizedBox(
                              height: 5,
                            ),
                            textfield(
                                TextInputType.text, expiredControler, '02/30'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            label('CVV'),
                            const SizedBox(
                              height: 5,
                            ),
                            textfield(TextInputType.text, cvvControler, '000'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  checkboxSaveCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            buttonBottom(context, 'Add Card', onTap: () {})
          ],
        ),
      ),
    );
  }

  Row checkboxSaveCard() {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: _isChecked,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          checkColor: Colors.white,
          activeColor: Constant.mainColor,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        const Text(
          "Save Card",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Container cardWidget(
    BuildContext context,
    String number,
    String label1,
    String value1,
    String label2,
    String value2,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constant.mainColor.withOpacity(0.9),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 93,
            child: Image.asset('assets/images/card1.png',
                color: Colors.white.withOpacity(0.2)),
          ),
          Positioned(
            top: 0,
            left: 205,
            child: Image.asset('assets/images/card2.png',
                color: Colors.white.withOpacity(0.2)),
          ),
          const Positioned(
            top: 0,
            left: 290,
            child: Icon(
              BoxIcons.bxl_visa,
              size: 60,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Text(number,
                style: const TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                )),
          ),
          Positioned(
            left: 20,
            top: 200,
            child: detailCard(label1, value1),
          ),
          Positioned(
            left: 180,
            top: 200,
            child: detailCard(label2, value2),
          ),
          Positioned(
            left: 300,
            top: 200,
            child: Image.asset(
              'assets/images/chip.png',
              scale: 2.5,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  RichText detailCard(String label, String value) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: label,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white70,
          ),
        ),
        TextSpan(
            text: '\n$value',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
      ]),
    );
  }
}
