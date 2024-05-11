import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({
    super.key,
    required this.categoryName,
    required this.categoryImageUrl,
    required this.child,
    required this.onTap,
  });
  final String categoryName;
  final String categoryImageUrl;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryName,
          style: Styles.categoryText.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        InkWell(
          onTap: () {
            onTap();
          },
          child: CachedNetworkImage(
            imageUrl: categoryImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 237.w,
              height: 94.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.frameColor,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  opacity: 0.8,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.categoryTextBanner,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    customShopButton(),
                  ],
                ),
              ),
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
                color: AppColors.primaryColor,
              ),
            ),
            errorWidget: (context, url, error) => const CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 206.w,
          height: MediaQuery.sizeOf(context).height - 310.h,
          child: child,
        ),
      ],
    );
  }
}

Widget customShopButton() {
  return SizedBox(
    width: 115.w,
    height: 35.h,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Text(
        AppStrings.shopNow,
        textAlign: TextAlign.center,
        style: Styles.viewText.copyWith(color: AppColors.whiteColor),
      ),
    ),
  );
}
