import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TearmsAndCondition extends StatefulWidget {
  const TearmsAndCondition({super.key});

  @override
  State<TearmsAndCondition> createState() => _TearmsAndConditionState();
}

class _TearmsAndConditionState extends State<TearmsAndCondition> {
  bool isTearmsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTearmsAccepted = value;
            setState(() {});
          },
          isChecked: isTearmsAccepted,
        ),
        SizedBox(width: 16),
        Expanded(
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
    );
  }
}
