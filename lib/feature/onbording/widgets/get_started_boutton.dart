import 'package:book_an_appointment_with_doctor/Core/helpers/extension.dart';
import 'package:book_an_appointment_with_doctor/Core/routing/routes.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/app_colors.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedBoutton extends StatelessWidget {
  const GetStartedBoutton({super.key});

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
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        "Get Started",
        style: TextStyles.font16wihtSemyBold,
      ),
    );
  }
}
