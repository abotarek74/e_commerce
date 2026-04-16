import 'package:e_commerce/features/widgets/spalsh_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SpalshViewBody());
  }
}
