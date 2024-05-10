// ignore_for_file: file_names
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo_on_bording.svg"),
        Text("  Docdoc", style: TextStyles.font24Black700weight)
      ],
    );
  }
}
