import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:symphony_app/core/styles/colors/app_color.dart';
import 'package:symphony_app/core/styles/fonts/font_family_helper.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome To Symphony ',
      style: TextStyle(
        fontSize: 20.sp,
        fontFamily: FontFamilyHelper.fontFamily,
        color: AppColors.primaryColor,
      ),
    );
  }
}
