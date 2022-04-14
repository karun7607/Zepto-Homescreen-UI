import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';

Widget cateToExploreprdct(String _text, _image) {
  return Card(
      child: Column(children: [
    Container(
      width: 140,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: palette.zeptoAppBarclr,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          _text,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
        Container(
          color: palette.zeptoAppBarclr,
          child: Image(
            image: _image,
            fit: BoxFit.cover,
            height: 115,
            width: 135,
          ),
        ),
      ]),
    )
  ]));
}
