import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/pages/add_card_page.dart';
import 'package:music_app/pages/success_transaction_page.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/button_bottom_widget.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  var _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'Payment Methods'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Credit & Debit Card',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                addCard(context),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'More Payment Options',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      paymentRadio('assets/images/paypal.png', 'Paypal'),
                      const Divider(
                        color: Colors.black12,
                      ),
                      paymentRadio('assets/images/apple.png', 'Apple Pay'),
                      const Divider(
                        color: Colors.black12,
                      ),
                      paymentRadio('assets/images/google.png', 'Google Pay'),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          buttonBottom(context, 'Confirm Payment', onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuccessTransactionPage(),
                ));
          })
        ],
      ),
    );
  }

  Row paymentRadio(
    String asset,
    String name,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Image.asset(
                asset,
                scale: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: Transform.scale(
            scale: 1.7,
            child: Radio(
                toggleable: true,
                value: name,
                visualDensity: VisualDensity.standard,
                activeColor: Constant.mainColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                groupValue: _result,
                onChanged: (value) {
                  setState(() {
                    _result = value;
                  });
                }),
          ),
        ),
      ],
    );
  }

  InkWell addCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddCardPage(),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                MingCute.bank_card_fill,
                size: 30,
                color: Constant.mainColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Add Card',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Constant.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
