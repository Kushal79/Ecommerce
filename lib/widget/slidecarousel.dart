import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SlideCarousal extends StatelessWidget {
  
  
  final List<AssetImage> images;

  const SlideCarousal({Key key, @required this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child:  new Carousel(
        boxFit: BoxFit.scaleDown,
        images: images,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
  }
}
