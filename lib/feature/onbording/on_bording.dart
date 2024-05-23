import 'package:book_an_appointment_with_doctor/Core/helpers/extension.dart';
import 'package:book_an_appointment_with_doctor/Core/routing/routes.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:book_an_appointment_with_doctor/Core/widgets/app_boutton.dart';
import 'package:book_an_appointment_with_doctor/feature/onbording/widgets/docLogo_and_name.dart';
import 'package:book_an_appointment_with_doctor/feature/onbording/widgets/doctor_text_and_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorTextAndImage(),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    style: TextStyles.font13grayRegular,
                  ),
                  SizedBox(height: 30.h),
                  AppBoutton(
                    text: "Get Started",
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
