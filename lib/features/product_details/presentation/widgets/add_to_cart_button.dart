import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.onTap});
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            )),
        child: Row(
          children: [
            SvgPicture.asset(AppImages.icAddToCart),
            SizedBox(
              width: 24.w,
            ),
            Text(
              AppStrings.addToCart,
              style: Styles.appBarTitle.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
