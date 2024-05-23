import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyles.font16Black500weight,
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
          child: Text(
            "Sign Up",
            style: TextStyles.font13BlueSemiBold,
          ),
        ),
      ],
    );
  }
}
