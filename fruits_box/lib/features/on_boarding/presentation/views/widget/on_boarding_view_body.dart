import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_box/constants.dart';
import 'package:fruits_box/core/utils/app_colors.dart';
import 'package:fruits_box/core/widget/custom_button.dart';
import 'package:fruits_box/features/auth/presentation/views/login_view.dart';
import 'package:fruits_box/features/on_boarding/presentation/views/widget/on_boarding_view_page.dart';

import '../../../../../core/services/shared_preferences_singleton.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingViewPage(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:
                currentPage == 1
                    ? AppColors.primaryColor
                    : const Color.fromARGB(139, 123, 189, 150),
          ),
        ),
        SizedBox(height: 40),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorezentalPadding),
            child: CustomButton(
              onPressed: () {
                SharedPreferencesSingleton.setBool(KIsOnboardingSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              title: "Şimdi başla",
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
