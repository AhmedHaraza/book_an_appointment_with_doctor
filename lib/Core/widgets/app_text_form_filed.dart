import 'package:book_an_appointment_with_doctor/Core/theming/app_colors.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFiled extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? foucasBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hitText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color ? backgroundColor;
  const AppTextFormFiled({
    super.key,
    this.contentPadding,
    this.foucasBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.obscureText,
    this.suffixIcon,
    required this.hitText, this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        focusedBorder: foucasBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: ColorsManger.primaryColor,
                  width: 1.3,
                )),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        isDense: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManger.lighterGray,
                width: 1.3,
              ),
            ),
        hintText: hitText,
        hintStyle: hintStyle ?? TextStyles.font14LighterGrayRegular,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? ColorsManger.formColor
      ),
      obscureText: obscureText ?? false,
      style: TextStyles.font14GrayRegular,
    );
  }
}
