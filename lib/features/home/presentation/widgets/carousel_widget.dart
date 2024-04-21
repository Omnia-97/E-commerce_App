import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          CarouselSlider(
            items: [
              Image.asset(AppImages.carousel1),
              Image.asset(AppImages.carousel2),
              Image.asset(AppImages.carousel3),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
