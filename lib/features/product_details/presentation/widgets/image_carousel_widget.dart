import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/core/components/reusable_components/bottom_active_icon.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageCarouselWidget extends StatefulWidget {
  ImageCarouselWidget({super.key, required this.data});

  Data data;

  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  int _current = 0;

  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) {
            return CachedNetworkImage(
              imageUrl: widget.data.images?[index] ?? "",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                      color: AppColors.primaryColor.withOpacity(0.3),
                      width: 1.w),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          itemCount: widget.data.images?.length ?? 0,
        ),
        Positioned(
          top: 16.h,
          right: 16.w,
          child: const BottomActiveIcon(
            imageIcon: AppImages.wishListIc,
            iconSize: 24,
            iconColor: AppColors.primaryColor,
          ),
        ),
        Positioned(
          bottom: 8.h,
          left: 170.w,
          child: AnimatedSmoothIndicator(
            activeIndex: _current,
            count: widget.data.images?.length ?? 0,
            effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.whiteColor,
              dotHeight: 7,
              dotWidth: 7,
            ), // your preferred effect
            onDotClicked: (index) {
              _current = index;

              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
