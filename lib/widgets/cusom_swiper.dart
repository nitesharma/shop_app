import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

List imgList = [
  "https://images.pexels.com/photos/9604192/pexels-photo-9604192.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/9604186/pexels-photo-9604186.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/5886042/pexels-photo-5886042.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/6958629/pexels-photo-6958629.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/9558724/pexels-photo-9558724.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
];

Widget customSwiper() {
  return VxSwiper.builder(
    height: 200,
    itemCount: imgList.length,
    //aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    autoPlay: true,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlayInterval: const Duration(seconds: 2),
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    isFastScrollingEnabled: false,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(imgList[index]), fit: BoxFit.cover)),
      );
    },
  );
}
