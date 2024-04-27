import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            )),
        child: Row(
          children: [
            SizedBox(width:50.h),
            Text(
              AppStrings.checkOut,
              style: Styles.appBarTitle.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(
              width: 27.w,
            ),
            SvgPicture.asset(
              AppImages.icCheckArrow,
            ),
          ],
        ),
      ),
    );
  }
}
