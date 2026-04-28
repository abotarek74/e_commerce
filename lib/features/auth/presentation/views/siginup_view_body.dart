import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/tearms_and_condition.dart';
import 'package:flutter/material.dart';

class SiginupViewBody extends StatelessWidget {
  const SiginupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              backgroundColor: Colors.white,
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              backgroundColor: Colors.white,
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              backgroundColor: Colors.white,
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Color(0XFF949D9E),
              ),
            ),
            SizedBox(height: 16),
            TearmsAndCondition(),
            SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 26),
            haveAnAccountWidget(context: context),
          ],
        ),
      ),
    );
  }
}
