import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {required this.hintText,
      this.suffixIcon,
      this.isPassword,
      this.controller,
      this.keyboardType,
      this.onTap,
      this.onChanged,
      this.onValidate,
      this.onFieldSubmitted,
      this.onEditingComplete,
      this.onSaved,
      super.key});
  final String hintText;
  final Widget? suffixIcon;
  final bool? isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTap, onEditingComplete;
  final void Function(String?)? onChanged, onFieldSubmitted, onSaved;
  final String? Function(String?)? onValidate;

  @override
  State<CustomTextFormField> createState() =>
      _CustomTextFormFieldRegisterState();
}

class _CustomTextFormFieldRegisterState
    extends State<CustomTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: TextFormField(
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        validator: widget.onValidate,
        onSaved: widget.onSaved,
        onFieldSubmitted: widget.onFieldSubmitted,
        onEditingComplete: widget.onEditingComplete,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ?? false ? obscureText : !obscureText,
        cursorColor: AppColors.primaryColor,
        style: const TextStyle(color: AppColors.primaryColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteColor,
          hintText: widget.hintText,
          hintStyle: Styles.hintText,
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
              ),
          focusedBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          suffixIcon: widget.isPassword ?? false
              ? InkWell(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : widget.suffixIcon,
        ),
      ),
    );
  }
}
