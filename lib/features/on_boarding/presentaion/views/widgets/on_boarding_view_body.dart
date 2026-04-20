import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/on_boarding/presentaion/views/widgets/one_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  final int totalPages = 2; // 👈 عدد الصفحات

  @override
  void initState() {
    pageController = PageController();
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
        Expanded(
          child: OneBoardingPageView(
            pageController: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),

        DotsIndicator(
          dotsCount: totalPages,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: AppColor.primaryColor.withValues(alpha: 0.5),
          ),
        ),

        const SizedBox(height: 29),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHhorizontalPadding),
          child: Visibility(
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            visible: currentPage == totalPages - 1,
            child: CustomButton(onPressed: () {}, text: 'ابدأ الآن'),
          ),
        ),

        const SizedBox(height: 43),
      ],
    );
  }
}
