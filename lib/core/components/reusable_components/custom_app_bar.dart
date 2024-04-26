import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/routes/pages_route_name.dart';
import '../../utils/app_images.dart';
import 'custom_search_text_form_field.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.leading,
    required this.kToolbarHeight,
    required this.width,
    required this.badgeText
  });
  final Widget? leading;
  final double kToolbarHeight;
  final double width;
  final String badgeText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Image.asset(
              AppImages.homeLogo,
              width: 66.w,
              height: 22.h,
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            children: [
              const SearchTextFormField(),
              SizedBox(
                width: width,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PagesRouteName.cartPage);
                },
                child: Badge(
                  label: Text(badgeText),
                  child: SvgPicture.asset(
                    AppImages.shoppingIc,
                    width: 28.w,
                    height: 28.h,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      leading: leading,
      automaticallyImplyLeading: false,
      leadingWidth: 15.w,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);
}
