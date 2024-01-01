import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:music_app/utils/constant.dart';

Container bannerPlan({
  required BuildContext context,
  required String title,
  String? price,
  required String subtitle,
  required String feature1,
  required String feature2,
  required String feature3,
  required String feature4,
  required bool button,
  required VoidCallback onTap,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: const BoxDecoration(
              color: Constant.mainColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      TextSpan(
                        text: (price == null) ? '' : '  /$price',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            border: Border.all(
              color: Constant.mainColor,
              width: 2,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              featuresPlan(feature1),
              featuresPlan(feature2),
              featuresPlan(feature3),
              featuresPlan(feature4),
              const SizedBox(
                height: 5,
              ),
              (button == false)
                  ? const SizedBox(
                      height: 5,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: ElevatedButton(
                        onPressed: onTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Constant.mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 40),
                        ),
                        child: const Text(
                          'Select Plan',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ],
    ),
  );
}

Padding featuresPlan(String feature) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10, top: 5),
    child: Row(
      children: [
        const Icon(
          MingCute.check_circle_line,
          color: Constant.mainColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          feature,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
