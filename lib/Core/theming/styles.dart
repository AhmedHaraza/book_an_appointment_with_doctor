import 'package:book_an_appointment_with_doctor/Core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManger.black,
  );

  static TextStyle font16Black500weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManger.black,
  );

  static TextStyle font32Blue500weight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManger.primaryColor,
  );
  static TextStyle font13grayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.gray,
  );

  static TextStyle font16wihtSemyBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManger.white,
  );
}
