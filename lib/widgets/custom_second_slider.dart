import 'package:flutter/material.dart';

import '../datas/slider_images.dart';

Widget customSecondSlider() {
  return Container(
    padding: EdgeInsets.only(left: 10),
    height: 150,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(secondSliderImage[2]),
            width: 335,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(secondSliderImage[0]),
            width: 335,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(secondSliderImage[1]),
            width: 335,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
