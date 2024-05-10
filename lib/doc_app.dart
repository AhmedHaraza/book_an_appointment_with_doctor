import 'package:book_an_appointment_with_doctor/Core/routing/app_router.dart';
import 'package:book_an_appointment_with_doctor/Core/routing/routes.dart';
import 'package:book_an_appointment_with_doctor/Core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primaryColor: ColorsManger.primaryColor,
            scaffoldBackgroundColor: ColorsManger.white,
          ),
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generaterRouter,
        ));
  }
}
