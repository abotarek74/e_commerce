import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHhorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Color(0XFF949D9E),
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',

                  style: TextStyles.bold13.copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
            SizedBox(height: 32),

            Text.rich(
              TextSpan(
                text: 'ليس لديك حساب؟ ',
                style: TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
                children: [
                  TextSpan(
                    text: ' انشاء حساب جديد',
                    style: TextStyles.semiBold16.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'أو',
              style: TextStyles.semiBold16.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
