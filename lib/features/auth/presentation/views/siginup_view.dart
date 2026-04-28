import 'package:e_commerce/features/auth/presentation/views/siginup_view_body.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SiginupView extends StatelessWidget {
  const SiginupView({super.key});

  static const routeName = 'siginup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'حساب جديد'),
      body: const SiginupViewBody(),
    );
  }
}
