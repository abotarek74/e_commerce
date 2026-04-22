import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Text dontHaveAnAccountWidget() {
  return Text.rich(
    TextSpan(
      text: 'ليس لديك حساب؟ ',
      style: TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
      children: [
        TextSpan(
          text: ' انشاء حساب جديد',
          style: TextStyles.semiBold16.copyWith(color: AppColor.primaryColor),
        ),
      ],
    ),
  );
}
