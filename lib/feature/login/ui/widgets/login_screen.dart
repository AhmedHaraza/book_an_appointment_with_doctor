import 'package:book_an_appointment_with_doctor/Core/helpers/spacing.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/styles.dart';
import 'package:book_an_appointment_with_doctor/Core/widgets/app_boutton.dart';
import 'package:book_an_appointment_with_doctor/Core/widgets/app_text_form_filed.dart';
import 'package:book_an_appointment_with_doctor/feature/login/ui/widgets/already_have_an_account.dart';
import 'package:book_an_appointment_with_doctor/feature/login/ui/widgets/terms&conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to \n see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormFiled(hitText: "Email"),
                        verticalSpacing(16),
                        AppTextFormFiled(
                          hitText: "Password",
                          obscureText: isObsecureText,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecureText = !isObsecureText;
                              });
                            },
                            icon: Icon(isObsecureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        verticalSpacing(16),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyles.font13BlueRegular,
                          ),
                        ),
                        verticalSpacing(40),
                        AppBoutton(text: "Login", onPressed: () {}),
                        verticalSpacing(16),
                        const TermsConditions(),
                        verticalSpacing(16),
                        const AlreadyHaveAnAccount(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
