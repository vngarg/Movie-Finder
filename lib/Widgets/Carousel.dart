import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget MyCarousel(context) {
  return Container(
    child: SizedBox(
        height: 200.0,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          images: [
            ExactAssetImage('assets/images/img1.png'),
            ExactAssetImage('assets/images/img2.png'),
            ExactAssetImage("assets/images/img3.png")
          ],
          dotSize: 7.0,
          dotSpacing: 25.0,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.purple.withOpacity(0.0),
          // borderRadius: true,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
        )),
  );
}
