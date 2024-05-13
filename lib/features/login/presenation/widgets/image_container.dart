import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:symphony_app/core/extension/context_extension.dart';
import 'package:symphony_app/core/styles/colors/app_color.dart';
import 'package:symphony_app/core/styles/fonts/font_family_helper.dart';
import 'package:symphony_app/core/styles/fonts/font_weight_helper.dart';
import 'package:symphony_app/core/styles/images/app_image.dart';


class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.loginLogo,
            height: 280.h,
          ),
          // verticalSpace(12),
          Text(
            'S y m p h o n y',
            style: TextStyle(
              fontSize: 30.sp,
              fontFamily: FontFamilyHelper.fontFamily1,
              color: AppColors.primaryColor,
              fontWeight: FontWeightHelper.semiBold,
            ),
          )
        ],
      ),
    );
  }
}
