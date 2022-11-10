import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarousalSliderScreen extends StatelessWidget {
  const CarousalSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carousal slider'),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 300,
          aspectRatio: 16 / 5,
          viewportFraction: 0.6,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
        items: [1, 2, 3, 4, 5, 6, 7, 8].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image.asset(
                    "assets/movie/movie$i.jfif",
                    fit: BoxFit.cover,
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
