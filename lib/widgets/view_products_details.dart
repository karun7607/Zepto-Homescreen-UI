import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';

Widget viewProductsdetails(_image, String _productname, String _netweight,
    String _oldprice, String _newprice) {
  return Padding(
    padding: const EdgeInsets.only(right: 12.0, top: 10),
    child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            // color: Colors.red,
            child: Column(
              children: [
                Image(
                  image: _image,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _productname,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(_netweight,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(height: 2),
                      Text(_oldprice,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(height: 2),
                      Text(_newprice,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                color: Color(0xffF3EBF7),
                height: 30,
                width: 30,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  iconSize: 30,
                  color: palette.iconColor,
                ),
              )),
          Positioned(
              right: -07,
              top: -05,
              child: CircleAvatar(
                backgroundColor: palette.iconColor,
                radius: 17,
                child: Text(
                  "15%\nOff",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ))
        ]),
  );
}
