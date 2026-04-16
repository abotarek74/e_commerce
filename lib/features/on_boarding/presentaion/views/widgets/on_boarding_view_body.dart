import 'package:e_commerce/features/on_boarding/presentaion/views/widgets/one_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: OneBoardingPageView())]);
  }
}
