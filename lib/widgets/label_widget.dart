import 'package:flutter/material.dart';

Align label(String label) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      label,
      style: const TextStyle(
        fontSize: 15,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
