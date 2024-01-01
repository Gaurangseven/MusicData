import 'package:flutter/material.dart';
import 'package:music_app/utils/constant.dart';

InkWell otherSignIn(String image, {required Function onTap}) {
  return InkWell(
    onTap: () {
      onTap;
    },
    child: Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: Constant.greyColor,
        ),
        color: Colors.white,
      ),
      child: Image.asset(image, scale: 20),
    ),
  );
}
