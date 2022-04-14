import 'package:flutter/material.dart';

Widget gridProductsView(String _title, String _image) {
  return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12, offset: Offset(01, 01), spreadRadius: 0.5)
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _title,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            // height: 60,
            child:
                Image(image: AssetImage(_image), height: 60, fit: BoxFit.cover),
          )
        ],
      ));
}
