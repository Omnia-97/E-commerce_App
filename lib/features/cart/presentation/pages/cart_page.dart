import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/routes/pages_route_name.dart';
import '../../../../core/utils/styles.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.cart,
          style: Styles.appBarTitle,
        ),
        actions: [
          SvgPicture.asset(
            AppImages.searchIcon,
            width: 28.w,
            height: 28.h,
          ),
          SizedBox(
            width: 32.w,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SvgPicture.asset(
              AppImages.shoppingIc,
              width: 28.w,
              height: 28.h,
            ),
          ),
        ],
      ),
    );
  }
}
