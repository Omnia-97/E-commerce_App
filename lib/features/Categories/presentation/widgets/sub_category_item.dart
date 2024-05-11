import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../home/data/models/categories_model.dart';

class SubCategoryItem extends StatelessWidget {
  SubCategoryItem(
      {super.key,
      required this.subCategoryData,
      required this.categoryData,
      required this.onTap});
  SubCategoryData subCategoryData;
  Data categoryData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: categoryData.image ?? "",
            imageBuilder: (context, imageProvider) => Container(
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: AppColors.primaryColor.withOpacity(0.3),
                  width: 1.w,
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
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
          SizedBox(
            height: 8.h,
          ),
          Text(
            subCategoryData.name ?? "",
            style: Styles.viewText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
