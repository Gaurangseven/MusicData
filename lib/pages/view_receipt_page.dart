import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/button_bottom_widget.dart';
import 'package:music_app/widgets/dotted_line_widget.dart';
import 'package:music_app/widgets/label_receive_widget.dart';

class ViewReceiptPage extends StatelessWidget {
  const ViewReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'E-Receipt'),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                barcodeWidget(context, 'Receive Receipt ID 12'),
                const SizedBox(
                  height: 25,
                ),
                labelReceipt('Plan Details', 'Yearly'),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                labelReceipt('Purchase Date', 'December 24, 2023 | 10.00 AM'),
                const SizedBox(
                  height: 10,
                ),
                labelReceipt('Expiry Date', 'December 24, 2024 | 10.00 AM'),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                labelReceipt('Amount', "\$99.99"),
                const SizedBox(
                  height: 10,
                ),
                labelReceipt('Tax & Fees', "\$10.00"),
                const SizedBox(
                  height: 20,
                ),
                const DottedLine(),
                const SizedBox(
                  height: 20,
                ),
                labelReceipt('Total', "\$109.99"),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                labelReceipt('Name', 'Esther Howard'),
                const SizedBox(
                  height: 10,
                ),
                labelReceipt('Phone Number', '+1 (208) 555-0112'),
                const SizedBox(
                  height: 10,
                ),
                labelReceipt('Payment Mode', 'Paypal'),
                const SizedBox(
                  height: 10,
                ),
                labelReceipt('Transaction ID', '#RE2564HG23'),
              ],
            ),
          ),
          const Spacer(),
          buttonBottom(context, 'Download E-Receipt', onTap: () {}),
        ],
      ),
    );
  }

  BarcodeWidget barcodeWidget(BuildContext context, String data) {
    return BarcodeWidget(
      barcode: Barcode.code128(),
      data: data,
      drawText: false,
      width: MediaQuery.of(context).size.width,
      height: 70,
    );
  }
}
