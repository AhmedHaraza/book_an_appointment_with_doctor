// ignore_for_file: file_names
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font13grayRegular,
        children: <TextSpan>[
          const TextSpan(
            text: 'By logging, you agree to our ',
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font13grayRegular,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
