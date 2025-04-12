import 'package:flutter/material.dart';
import 'package:fruits_box/features/auth/presentation/views/widget/login_view_body.dart';

import '../../../../core/widget/custom_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Giriş Yap'),
      body: LoginViewBody(),
    );
  }
}
