import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class HaveAnAccaountWidget extends StatelessWidget {
  const HaveAnAccaountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Zarada hesabınız var mı? ",
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(context);
                  },
            text: "Giriş Yap",
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
