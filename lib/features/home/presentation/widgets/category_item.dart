import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryImageUrl,
    required this.categoryText,
  });
  final String categoryImageUrl;
  final String categoryText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: categoryImageUrl,
          imageBuilder: (context, imageProvider) => Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: AppColors.categoryItemColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(
              value: downloadProgress.progress,
              color: AppColors.primaryColor,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Text(
          textAlign: TextAlign.center,
          categoryText,
          style: Styles.categoryText,
        ),
      ],
    );
  }
}
