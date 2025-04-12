import 'package:flutter/material.dart';
import 'package:fruits_box/core/utils/app_colors.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/custom_check_box.dart';

import '../../../../../core/utils/app_text_style.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hesap oluşturarak  ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'Şartlar ve Koşullarımızı kabul ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),

                TextSpan(
                  text: 'etmiş olursunuz.',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),

        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
      ],
    );
  }
}
