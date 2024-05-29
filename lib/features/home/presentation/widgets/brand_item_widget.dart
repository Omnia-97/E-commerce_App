import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';

class BrandItemWidget extends StatelessWidget {
  const BrandItemWidget({
    super.key,
    required this.brandImageUrl,
    required this.brandText,
  });
  final String brandImageUrl;
  final String brandText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Container(
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.transparent,
          border: Border.all(
            color: AppColors.primaryColor.withOpacity(0.8),
            width: 1.w,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: brandImageUrl,
                  width: 200.w,
                  height: 110.h,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Text(
                  textAlign: TextAlign.center,
                  brandText,
                  style: Styles.categoryText,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 4.h,
                right: 6.w,
              ),
              child: const ImageIcon(
                AssetImage(AppImages.wishListIc),
                size: 20,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
