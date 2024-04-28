import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTabItem extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  const CategoryTabItem({
    super.key,
    required this.categoryName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 85.h,
      color: isSelected ? AppColors.whiteColor : AppColors.strokeColor,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Visibility(
            visible: isSelected,
            child: Container(
              height: 75.h,
              width: 7.w,
              margin: EdgeInsets.only(left: 5.w, right: 5.w),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                  bottom: Radius.circular(20.r),
                ),
              ),
            ),
          ),
          SizedBox(
            width: isSelected ? 125.w : 138.w,
            child: Padding(
              padding:
                  isSelected ? EdgeInsets.all(0.w) : EdgeInsets.only(left: 6.w),
              child: Text(
                categoryName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Styles.categoryText.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
