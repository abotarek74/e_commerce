import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/on_boarding/presentaion/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OneBoardingPageView extends StatefulWidget {
  const OneBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<OneBoardingPageView> createState() => _OneBoardingPageViewState();
}

class _OneBoardingPageViewState extends State<OneBoardingPageView> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              PageViewItem(
                isVisible:
                    (PageController().hasClients
                        ? PageController().page!.round()
                        : 0) ==
                    0,
                image: Assets.imagesPageViewItemImage1,
                backgroundImage: Assets.imagesPageViewitem1Backgroundimage,
                subTitle:
                    "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('مرحبًا بك في '),
                    Text('HUB'),
                    Text('Fruit'),
                  ],
                ),
              ),

              PageViewItem(
                isVisible:
                    (PageController().hasClients
                        ? PageController().page!.round()
                        : 0) !=
                    0,
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
          ),
        ),

        const SizedBox(height: 16),

        const SizedBox(height: 16),
      ],
    );
  }
}
