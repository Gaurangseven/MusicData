import 'package:flutter/material.dart';

TextField textfield(TextInputType textInputType, TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.only(left: 20),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }