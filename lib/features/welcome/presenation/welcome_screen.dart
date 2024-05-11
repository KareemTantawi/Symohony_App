import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:symphony_app/core/utils/spacing.dart';
import 'package:symphony_app/features/welcome/presenation/widget/gradient_container.dart';
import 'package:symphony_app/features/welcome/presenation/widget/welcome_text.dart';

import '../../../core/common/widgets/app_default_button.dart';
import '../../../core/common/widgets/app_text_default_button.dart';
import 'widget/secondry_Text.dart';
import 'widget/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const WelcomeImage(),
            const GradientContainer(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 220,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: Column(
                  children: [
                    const WelcomeText(),
                    verticalSpace(4),
                    const SecondryText(),
                    verticalSpace(18),
                    AppDefaultButton(
                      onTap: () {},
                      title: 'Login',
                    ),
                    verticalSpace(8),
                    AppDefaultTextButton(
                      onPressed: () {},
                      title: 'Sign up',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
