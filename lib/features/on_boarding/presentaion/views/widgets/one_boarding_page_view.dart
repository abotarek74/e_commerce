import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/on_boarding/presentaion/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OneBoardingPageView extends StatelessWidget {
  const OneBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItemImage1,
          backgroundimage: Assets.imagesPageViewItemImage1,
          subTitle:
              " اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            children: [Text('مرحبًا بك في '), Text('Fruit'), Text('HUB')],
          ),
        ),
      ],
    );
  }
}
