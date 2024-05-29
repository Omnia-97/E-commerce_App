import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoldWidget extends StatelessWidget {
  const SoldWidget({super.key,required this.soldText,});
  final String soldText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      height: 34.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.3),
          width: 1.w,
        ),
      ),
      child: Text(
        '$soldText Sold',
        style: Styles.categoryText.copyWith(fontWeight: FontWeight.w600,fontSize: 13.sp,),
      ),
    );
  }
}
