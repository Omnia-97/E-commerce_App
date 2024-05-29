import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle titleLarge = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  static TextStyle titleMedian = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static TextStyle titleSmall = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.whiteColor,
  );
  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  static TextStyle hintText = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.hintColor,
  );
  static TextStyle hintTextSearch = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.textColor.withOpacity(0.6),
  );
  static TextStyle viewText = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );
  static TextStyle categoryText = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );
  static TextStyle categoryTextBanner = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );
  static TextStyle appBarTitle =   GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );


}

