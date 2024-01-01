import 'package:flutter/material.dart';
import 'package:music_app/widgets/back_nav_widget.dart';

AppBar appBarCustom(BuildContext context, String label) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: backNavWidget(context),
      ),
    );
  }