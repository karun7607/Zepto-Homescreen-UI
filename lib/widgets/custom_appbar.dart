import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: palette.zeptoAppBarclr,
    title: Row(
      children: [
        Text(
          "Zepto",
          style: TextStyle(
              fontSize: 21,
              color: palette.iconColor,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 60),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: palette.iconColor,
            ),
            label: Text(
              "Your Location",
              style: TextStyle(color: Colors.white),
            ))
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_outlined,
            color: palette.iconColor,
          ))
    ],
  );
}
