import 'package:flutter/material.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/banner_plan_widget.dart';
import 'package:music_app/widgets/button_bottom_widget.dart';
import 'package:music_app/widgets/dotted_line_widget.dart';
import 'package:music_app/widgets/label_receive_widget.dart';

class SelectedPlanPage extends StatelessWidget {
  const SelectedPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'Review Summary'),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                bannerPlan(
                  context: context,
                  title: '\$99.99',
                  price: 'Year',
                  subtitle: 'Go Pro & Get More Benefits',
                  feature1: 'All features of the monthly plan.',
                  feature2: 'Priority customer support.',
                  feature3: 'Early access.',
                  feature4: 'Significant cost saving.',
                  button: false,
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: labelReceipt('Amount', '\$99.99'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: labelReceipt('Tax & Fees', '\$10.00'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: DottedLine(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: labelReceipt('Total', '\$109.99'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paymentSelected(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Change',
                            style: TextStyle(
                              color: Constant.mainColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          buttonBottom(context, 'Confirm Payment', onTap: () {})
        ],
      ),
    );
  }

  Row paymentSelected() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.payments_rounded,
              color: Constant.mainColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Paypal',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10, top: 5),
        ),
      ],
    );
  }
}
