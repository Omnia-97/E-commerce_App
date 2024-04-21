import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          Text(
            AppStrings.categories,
            style: Styles.titleMedian.copyWith(
              color: AppColors.textColor,
            ),
          ),
          SizedBox(
            width: 254.w,
          ),
          Text(
            AppStrings.viewAll,
            style: Styles.viewText,
          ),
        ],
      ),
    );
  }
}
