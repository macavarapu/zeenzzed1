import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Carousalslider extends StatelessWidget {
  const Carousalslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    CarouselSlider(
        items: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage('assets/image/1.png'),
                  fit: BoxFit.cover,

              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 170,

          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          ///  onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        )
    );
  }
}
