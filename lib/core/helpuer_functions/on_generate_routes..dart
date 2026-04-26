import 'package:e_commerce/features/auth/presentation/sigin_up_view.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/on_boarding/presentaion/on_boarding_view.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart'
    show SplashView;
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case SiginUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SiginUpView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return null;
  }
}
