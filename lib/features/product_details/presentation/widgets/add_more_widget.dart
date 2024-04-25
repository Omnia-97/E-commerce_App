import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddMoreWidget extends StatelessWidget {
  const AddMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122.w,
      height: 42.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SvgPicture.asset(AppImages.icSubtractItem),
        SizedBox(width: 22.w,),
        Text('1' , style: Styles.titleMedian,),
        SizedBox(width: 21.w,),
        SvgPicture.asset(AppImages.icAddItem),

      ],),
    );
  }
}
