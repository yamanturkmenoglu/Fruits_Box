import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../signup_view.dart';

class DontHaveAnAccaountWidget extends StatelessWidget {
  const DontHaveAnAccaountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hesabınız yok mu? ",
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignupView.routeName);
                  },
            text: "Kayıt Ol",
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
