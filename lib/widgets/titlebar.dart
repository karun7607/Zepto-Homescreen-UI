import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';

Widget titlebar(String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
    child: Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(color: palette.zeptoAppBarclr, fontSize: 18.5),
            )),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            subtitle,
            style: TextStyle(
                color: palette.iconColor, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}
