import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
    this.controller,
    this.onChanged,
  });
  final TextEditingController? controller;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348.w,
      height: 50.h,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteColor.withOpacity(0.7.sign),
          hintText: AppStrings.hintSearchForm,
          hintStyle: Styles.hintTextSearch,
          prefixIcon: const ImageIcon(
            AssetImage(AppImages.preSearch),
            color: AppColors.primaryColor,
            size: 24,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
