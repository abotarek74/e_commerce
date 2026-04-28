import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TearmsAndCondition extends StatelessWidget {
  const TearmsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(14, 0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          SizedBox(
            width:
                MediaQuery.sizeOf(context).width -
                (KHhorizontalPadding * 2) -
                47,
            child: Text.rich(
              TextSpan(
                text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                style: TextStyles.semiBold13.copyWith(color: Color(0XFF949D9E)),
                children: [
                  TextSpan(
                    text: 'الشروط والأحكام ',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  TextSpan(text: '', style: TextStyles.semiBold13.copyWith()),
                  TextSpan(
                    text: 'الخاصة ',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(text: '', style: TextStyles.semiBold13.copyWith()),
                  TextSpan(
                    text: 'بنا ',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
