import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < MediaQuery.of(context).size.width; i++)
            Container(
              width: 8,
              height: 1.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 2.0,
              ),
              color: Colors.black12,
            ),
        ],
      ),
    );
  }
}
