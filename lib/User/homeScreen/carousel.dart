import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sizer/sizer.dart';

final List<String> imgList = [
  'assets/carousel1.jpeg',
  'assets/carousel2.jpeg',
  'assets/carousel3.jpeg',
  'assets/carousel4.jpeg',
  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class CarouselCLass extends StatelessWidget {
  const CarouselCLass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 100.w,
      child: CarouselSlider(
        items: imgList
            .map((item) => Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 100.w,
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.2,
          // enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(seconds: 5),
          viewportFraction: 1,
        ),
        // items:[
        //   Image.asset('assets/carousel1.jpeg'),
        //   Image.asset('assets/carousel2.jpeg'),
        //   Image.asset('assets/carousel3.jpeg'),
        //   Image.asset('assets/carousel4.jpeg'),
        //
        // ],
      ),
    );
    //
  }
}
