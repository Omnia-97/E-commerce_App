import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class BottomActiveIcon extends StatelessWidget {
  const BottomActiveIcon({
    super.key,
    this.padding,
    required this.imageIcon,
    this.iconSize,
    this.iconColor,
  });
  final double? padding;
  final String imageIcon;
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      padding: EdgeInsets.all(padding??0.r),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        shape: BoxShape.circle,
      ),
      child: ImageIcon(
        AssetImage(imageIcon),
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
