import 'package:book_an_appointment_with_doctor/Core/theming/app_colors.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppBoutton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AppBoutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: ColorsManger.primaryColor,
        // *! Remove The size of the button
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.font16wihtSemyBold,
      ),
    );
  }
}
