import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Text haveAnAccountWidget({required BuildContext context}) {
  return Text.rich(
    TextSpan(
      text: 'تمتلك حساب بالفعل؟',
      style: TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
      children: [
        TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pop(context);
            },
          text: ' تسجيل دخول',
          style: TextStyles.semiBold16.copyWith(color: AppColor.primaryColor),
        ),
      ],
    ),
  );
}
