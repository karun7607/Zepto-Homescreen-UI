import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';
import 'package:zepto/datas/categ_to_explore_images.dart';
import 'package:zepto/datas/fruits_product_datas.dart';
import 'package:zepto/datas/heading_and_title.dart';
import 'package:zepto/datas/slider_images.dart';
import 'package:zepto/datas/trending_product_datas.dart';
import 'package:zepto/models/models.dart';
import 'package:zepto/widgets/cate_toExplore_details.dart';
import 'package:zepto/widgets/custom_image_slider.dart';
import 'package:zepto/widgets/grid_product_details.dart';
import 'package:zepto/widgets/view_products_details.dart';
import 'package:zepto/widgets/searchbar_widget.dart';
import 'package:zepto/widgets/titlebar.dart';

import '../datas/biscuits_product_datas.dart';
import '../datas/choco_product_datas.dart';
import '../datas/frozen_food_datas.dart';
import '../datas/grid_images.dart';
import '../datas/snacks_products_datas.dart';
import '../datas/veg_products-datas.dart';
import '../widgets/custom_second_slider.dart';

class ZeptoBody extends StatefulWidget {
  const ZeptoBody({Key? key}) : super(key: key);

  @override
  State<ZeptoBody> createState() => _ZeptoBodyState();
}

class _ZeptoBodyState extends State<ZeptoBody> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      customImageSlider(),
      searchBar(),
      titlebar(titles.title1, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    trendingProducds[index].productimage,
                    trendingProducds[index].productname,
                    trendingProducds[index].netweight,
                    trendingProducds[index].oldprice.toString(),
                    trendingProducds[index].newprice,
                    // trendingProducds[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title2, ""),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 390,
        // height: 700,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15, mainAxisSpacing: 15, crossAxisCount: 3),
            itemCount: gridImages.length,
            itemBuilder: (context, index) {
              return gridProductsView(gridHead[index], gridImages[index]);
            }),
      ),
      titlebar(titles.title3, ""),
      customSecondSlider(),
      titlebar(titles.title4, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: frozenProducts.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    frozenProducts[index].productimage,
                    frozenProducts[index].productname,
                    frozenProducts[index].netweight,
                    frozenProducts[index].oldprice.toString(),
                    frozenProducts[index].newprice,
                    // frozenProducts[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title5, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fruitsProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    fruitsProducds[index].productimage,
                    fruitsProducds[index].productname,
                    fruitsProducds[index].netweight,
                    fruitsProducds[index].oldprice.toString(),
                    fruitsProducds[index].newprice,
                    // fruitsProducds[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title6, ""),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage("assets/new/products_111.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      titlebar(titles.title7, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: vegProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    vegProducds[index].productimage,
                    vegProducds[index].productname,
                    vegProducds[index].netweight,
                    vegProducds[index].oldprice.toString(),
                    vegProducds[index].newprice,
                    // frozenProducts[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title8, ""),
      Container(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cateExplore1.length,
                itemBuilder: (context, index) {
                  return cateToExploreprdct(
                      cateToExploretitle1[index], cateExplore1[index]);
                }),
          )),
      titlebar(titles.title9, ""),
      Container(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cateExplore2.length,
                itemBuilder: (context, index) {
                  return cateToExploreprdct(
                      cateToExploretitle2[index], cateExplore2[index]);
                }),
          )),
      titlebar(titles.title10, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: biscuitsProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    biscuitsProducds[index].productimage,
                    biscuitsProducds[index].productname,
                    biscuitsProducds[index].netweight,
                    biscuitsProducds[index].oldprice.toString(),
                    biscuitsProducds[index].newprice,
                    // frozenProducts[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title11, "SeeMore >"),
      Container(
          // margin: EdgeInsets.symmetric(vertical: 10),
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chocoProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    chocoProducds[index].productimage,
                    chocoProducds[index].productname,
                    chocoProducds[index].netweight,
                    chocoProducds[index].oldprice.toString(),
                    chocoProducds[index].newprice,
                    // frozenProducts[index].offer.toString(),
                  );
                }),
          )),
      titlebar(titles.title12, "SeeMore >"),
      Container(
          height: 185,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snacksProducds.length,
                itemBuilder: (context, index) {
                  return viewProductsdetails(
                    snacksProducds[index].productimage,
                    snacksProducds[index].productname,
                    snacksProducds[index].netweight,
                    snacksProducds[index].oldprice.toString(),
                    snacksProducds[index].newprice,
                    // frozenProducts[index].offer.toString(),
                  );
                }),
          )),
      Container(
        height: 120,
      )
    ]);
  }
}
