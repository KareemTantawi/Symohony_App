import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:symphony_app/core/common/animations/animate_do.dart';
import 'package:symphony_app/core/common/widgets/app_default_button.dart';
import 'package:symphony_app/core/common/widgets/default_icon_container.dart';
import 'package:symphony_app/core/common/widgets/default_text_form_feild.dart';
import 'package:symphony_app/core/styles/colors/app_color.dart';
import 'package:symphony_app/core/styles/fonts/font_family_helper.dart';
import 'package:symphony_app/core/styles/fonts/font_weight_helper.dart';
import 'package:symphony_app/core/styles/images/app_image.dart';
import 'package:symphony_app/core/utils/spacing.dart';

import '../../../core/common/widgets/default_show_dialog_app.dart';
import 'widgets/image_container.dart';
import 'widgets/login_text_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageContainer(),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 26.w,
                  vertical: 12.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomFadeInLeft(
                      duration: 600,
                      child: LoginTextWidget(),
                    ),
                    verticalSpace(26),
                    CustomFadeInRight(
                      duration: 600,
                      child: Row(
                        children: [
                          const DefaultIconContainer(
                            icon: Icons.email_rounded,
                          ),
                          horizontalSpace(22),
                          DefaultTextFormField(
                            textEditingController: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {},
                            onChanged: (value) {},
                            hintText: 'kareem@gmail.com',
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(22),
                    CustomFadeInLeft(
                      duration: 600,
                      child: Row(
                        children: [
                          const DefaultIconContainer(
                            icon: Icons.lock,
                          ),
                          horizontalSpace(22),
                          DefaultTextFormField(
                            textEditingController: _passController,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {},
                            onChanged: (value) {},
                            hintText: '.............',
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(40),
                    CustomFadeInRight(
                      duration: 600,
                      child: AppDefaultButton(
                        onTap: () {
                          defaultShowDialogApp(context);
                        },
                        title: 'Login',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
