import 'package:flutter/material.dart';
import 'package:music_app/widgets/button_widget.dart';

Container buttonBottom(BuildContext context, String label,
    {required VoidCallback onTap}) {
  return Container(
    height: 120,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          spreadRadius: 10,
          offset: const Offset(10, 10),
          color: Colors.black.withOpacity(0.1),
        )
      ],
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      border: Border.all(
        color: Colors.black12,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      child: buttonWidget(
        context,
        label,
        onTap: onTap,
      ),
    ),
  );
}
