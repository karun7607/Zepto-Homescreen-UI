import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget customImageSlider() {
  return Container(
    padding: EdgeInsets.all(10),
    height: 165,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Carousel(
      dotSize: 5.0,
      dotBgColor: Colors.transparent,
      borderRadius: true,
      boxFit: BoxFit.fill,
      images: [
        AssetImage("assets/images/01/slider01.jpg"),
        AssetImage("assets/images/01/slider02.jpg"),
        AssetImage("assets/images/01/slider03.jpg"),
      ],
    ),
  );
}
