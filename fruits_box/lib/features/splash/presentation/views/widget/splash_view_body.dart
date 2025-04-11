import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_box/core/utils/app_images.dart';
import 'package:fruits_box/features/auth/presentation/views/login_view.dart';
import 'package:fruits_box/features/on_boarding/presentation/views/on_boarding_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
 void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        Image.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesCircles, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    // ignore: non_constant_identifier_names
    bool isOnboardingSeen = SharedPreferencesSingleton.getBool(KIsOnboardingSeen);
    Future.delayed(const Duration(seconds: 3), () {
     if (isOnboardingSeen) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, LoginView.routeName);
     } else {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
     }
    });
  }
}
