import 'package:flutter/material.dart';
import 'package:fruits_box/core/widget/custom_appbar.dart';

import 'widget/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Kayıt Ol"),
      body: SignupViewBody(),
    );
  }
}
