import 'package:flutter/cupertino.dart';

class ZeptoProducts {
  final AssetImage productimage;
  final String productname;
  final String netweight;
  final String? oldprice;
  final String newprice;
  final String? offer;

  ZeptoProducts(
      {required this.productimage,
      required this.productname,
      required this.netweight,
      this.oldprice,
      required this.newprice,
      this.offer});
}
