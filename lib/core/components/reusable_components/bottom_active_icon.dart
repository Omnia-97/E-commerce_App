import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class BottomActiveIcon extends StatelessWidget {
  const BottomActiveIcon({
    super.key,
    required this.padding,
    required this.imageIcon,
  });
  final double padding;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      padding: EdgeInsets.all(padding.r),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        shape: BoxShape.circle,
      ),
      child: ImageIcon(
        AssetImage(imageIcon),
      ),
    );
  }
}
