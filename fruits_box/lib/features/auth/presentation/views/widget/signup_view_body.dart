import 'package:flutter/material.dart';
import 'package:fruits_box/constants.dart';
import 'package:fruits_box/core/widget/custom_button.dart';
import 'package:fruits_box/core/widget/custom_text_field.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/haveanaccaount.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/trems_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorezentalPadding),
        child: Column(
          children: [
            SizedBox(height: 45),
            CustomTextFormField(
              hintText: "Kullanıcı Adı",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16),
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
            TermsAndConditionsWidget(onChanged: (value) {}),
            SizedBox(height: 30),
            CustomButton(onPressed: () {}, title: 'Kayıt Ol'),
            SizedBox(height: 26),
            HaveAnAccaountWidget(),
          ],
        ),
      ),
    );
  }
}
