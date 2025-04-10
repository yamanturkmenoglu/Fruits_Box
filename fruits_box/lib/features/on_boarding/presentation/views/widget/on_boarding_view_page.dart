import 'package:flutter/material.dart';
import 'package:fruits_box/core/utils/app_colors.dart';
import 'package:fruits_box/core/utils/app_images.dart';
import 'package:fruits_box/core/utils/app_text_style.dart';
import 'package:fruits_box/features/on_boarding/presentation/views/widget/Page_view_item.dart';

class OnBoardingViewPage extends StatelessWidget {
  const OnBoardingViewPage({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          subtitle:
              'FruitsBOX ile benzersiz bir alışveriş deneyimini keşfedin. Geniş yelpazedeki birinci sınıf taze meyvelerimizi keşfedin ve en iyi fırsatları ve en yüksek kaliteyi yakalayın.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fruits",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                "BOX",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text("'a Hoş geldiniz", style: TextStyles.bold23),
            ],
          ),
          backgroundimage: Assets.imagesPageViewItem1Background,
          isVisible: true,
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          subtitle:
              'Sizlere özenle seçilmiş en iyi meyveleri sunuyoruz. Mükemmel meyveyi seçtiğinizden emin olmak için detaylara, fotoğraflara ve yorumlara göz atın.',
          title: Text("Ara ve alışveriş yap", style: TextStyles.bold23),
          backgroundimage: Assets.imagesPageViewItem2Background,
          isVisible: false,
        ),
      ],
    );
  }
}
