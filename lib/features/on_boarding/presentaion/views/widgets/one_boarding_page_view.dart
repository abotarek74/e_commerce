import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/features/on_boarding/presentaion/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OneBoardingPageView extends StatelessWidget {
  const OneBoardingPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
    required this.currentPage,
  });

  final PageController pageController;
  final void Function(int) onPageChanged;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        PageViewItem(
          isVisible: currentPage == 0,
          image: Assets.imagesPageViewItemImage1,
          backgroundImage: Assets.imagesPageViewitem1Backgroundimage,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ', style: TextStyles.bold23),
              Text(
                'HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColor.secondaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(color: AppColor.primaryColor),
              ),
            ],
          ),
        ),

        PageViewItem(
          isVisible: currentPage == 0,
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
