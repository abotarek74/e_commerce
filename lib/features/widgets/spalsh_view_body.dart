import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/on_boarding/presentaion/on_boarding_view.dart'
    show OnBoardingView;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody> {
  @override
  void initState() {
    executeNavigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashbottom),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
