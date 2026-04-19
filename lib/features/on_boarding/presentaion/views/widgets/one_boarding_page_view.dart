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
          backgroundImage: Assets.imagesPageViewitem1Backgroundimage,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('مرحبًا بك في '), Text('Fruit'), Text('HUB')],
          ),
        ),

        PageViewItem(
          image: Assets.imagesPageViewItemImage2,
          backgroundImage: Assets.imagesPageViewItemBackground2,
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: const Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
