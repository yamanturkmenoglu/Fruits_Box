import 'package:flutter/material.dart';
import 'package:fruits_box/constants.dart';
import 'package:fruits_box/core/utils/app_colors.dart';
import 'package:fruits_box/core/utils/app_images.dart';
import 'package:fruits_box/core/utils/app_text_style.dart';
import 'package:fruits_box/core/widget/custom_button.dart';
import 'package:fruits_box/core/widget/custom_text_field.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/custom_social_button.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/or_divider.dart';

import 'dont_haveanaccaount_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorezentalPadding),
        child: Column(
          children: [
            SizedBox(height: 45),
            CustomTextFormField(
              hintText: 'E-posta',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              suffixIcon: Icon(Icons.visibility, color: Color(0xffC9CECF)),
              hintText: 'Şifre',
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Şifremi Unuttum ?",
                  style: TextStyles.bold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, title: "Giriş yap"),
            SizedBox(height: 33),
            DontHaveAnAccaountWidget(),
            SizedBox(height: 33),
            OrDivider(),
            SizedBox(height: 16),
            SocialLoginButton(
              title: 'Google ile Giriş Yap',
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              title: 'Apple ile Giriş Yap',
              image: Assets.imagesApplIcon,
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              title: 'Facebook ile Giriş Yap',
              image: Assets.imagesFacebookIcon,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
