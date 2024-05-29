
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton ({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 398.w,
      height: 64.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding:  EdgeInsets.symmetric(horizontal: 40.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.buttonText,
        ),
      ),
    );
  }
}
