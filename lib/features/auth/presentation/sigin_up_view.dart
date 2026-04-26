import 'package:e_commerce/features/auth/presentation/views/sigin_up_view_body.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SiginUpView extends StatelessWidget {
  const SiginUpView({super.key});
  static const routeName = '/sigin-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'حساب جدبد'),
      body: SiginUpViewBody(),
    );
  }
}
