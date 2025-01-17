
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorTextAndImage extends StatelessWidget {
  const DoctorTextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            "assets/svgs/docdoc_logo_low_opacity.svg",
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(
            "assets/image/onboarding_doctor.png",
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "Best Doctor\nAppointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32Blue500weight.copyWith(height: 1.4),
            ),
          ),
        ),
      ],
    );
  }
}
