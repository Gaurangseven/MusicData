import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key, required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black,
            indent: 40,
            endIndent: 10,
            height: 40,
          ),
        ),
        Text(label),
        const Expanded(
          child: Divider(
            color: Colors.black,
            indent: 10,
            endIndent: 40,
            height: 40,
          ),
        ),
      ],
    );
  }
}
