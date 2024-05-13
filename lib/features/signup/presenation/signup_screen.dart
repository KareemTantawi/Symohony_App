import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:symphony_app/core/common/widgets/app_default_button.dart';
import 'package:symphony_app/core/common/widgets/app_text_default_button.dart';
import 'package:symphony_app/core/common/widgets/default_icon_container.dart';
import 'package:symphony_app/core/extension/context_extension.dart';
import 'package:symphony_app/core/routes/app_route.dart';
import 'package:symphony_app/core/utils/spacing.dart';

import '../../../core/common/animations/animate_do.dart';
import '../../../core/common/widgets/default_text_form_feild.dart';
import 'widgets/text_and_image_logo.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(30),
            const TextAndImageLogo(),
            // verticalSpace(15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Column(
                children: [
                  CustomFadeInLeft(
                    duration: 600,
                    child: Row(
                      children: [
                        const DefaultIconContainer(
                          icon: Icons.person,
                        ),
                        horizontalSpace(22),
                        DefaultTextFormField(
                          textEditingController: _userController,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          onChanged: (value) {},
                          hintText: 'user name',
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(26),
                  CustomFadeInRight(
                    duration: 600,
                    child: Row(
                      children: [
                        const DefaultIconContainer(
                          icon: Icons.email,
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
                  verticalSpace(26),
                  CustomFadeInLeft(
                    duration: 600,
                    child: Row(
                      children: [
                        const DefaultIconContainer(
                          icon: Icons.phone,
                        ),
                        horizontalSpace(22),
                        DefaultTextFormField(
                          textEditingController: _phoneController,
                          keyboardType: TextInputType.name,
                          validator: (value) {},
                          onChanged: (value) {},
                          hintText: '+2012298656',
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(26),
                  CustomFadeInRight(
                    duration: 600,
                    child: Row(
                      children: [
                        const DefaultIconContainer(
                          icon: Icons.lock,
                        ),
                        horizontalSpace(22),
                        DefaultTextFormField(
                          textEditingController: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {},
                          onChanged: (value) {},
                          hintText: '...........',
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(26),
                  CustomFadeInLeft(
                    duration: 600,
                    child: Row(
                      children: [
                        const DefaultIconContainer(
                          icon: Icons.lock,
                        ),
                        horizontalSpace(22),
                        DefaultTextFormField(
                          textEditingController: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {},
                          onChanged: (value) {},
                          hintText: '............',
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(26),
                  CustomFadeInDown(
                    duration: 600,
                    child: AppDefaultButton(
                      onTap: () {
                        context.pushAndRemoveUntil(AppRoutes.homeScreen);
                      },
                      title: 'Sign Up',
                    ),
                  ),
                  AppDefaultTextButton(
                    size: 14,
                    onPressed: () {
                      context.pushName(AppRoutes.loginScreen);
                    },
                    title: 'ِAlready have  an account ?',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
