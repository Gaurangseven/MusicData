import 'package:flutter/material.dart';
import 'package:music_app/utils/constant.dart';

ElevatedButton buttonWidget(BuildContext context, String label,
    {required VoidCallback onTap}) {
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: Constant.mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      fixedSize: Size(MediaQuery.of(context).size.width, 50),
    ),
    child: Text(
      label,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
