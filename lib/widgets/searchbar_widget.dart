import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';

Widget searchBar() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(offset: Offset(10, 10), color: Colors.black12, blurRadius: 30)
      ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
      height: 50,
      child: TextField(
        scrollPadding: EdgeInsets.zero,
        cursorColor: palette.zeptoAppBarclr,
        cursorHeight: 22,
        decoration: InputDecoration(
            // focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: palette.zeptoAppBarclr,
            ),

            // icon: Icon(Icons.search),
            hintText: "Search",
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25))),
      ),
    ),
  );
}
