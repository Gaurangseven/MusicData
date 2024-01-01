import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';
import 'package:music_app/widgets/button_widget.dart';
import 'package:music_app/widgets/subtitle_widget.dart';

class NotificatonAccess extends StatelessWidget {
  const NotificatonAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey.shade100,
              child: const Icon(
                MingCute.notification_fill,
                color: Constant.mainColor,
                size: 60,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Enable Notification Access',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SubTitleWidget(
                title: 'Enable notificatons to receive real-time updates.'),
            const SizedBox(
              height: 50,
            ),
            buttonWidget(context, 'Allow Notification', onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: const Text(
                'Maybe Later',
                style: TextStyle(
                  fontSize: 20,
                  color: Constant.mainColor,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
