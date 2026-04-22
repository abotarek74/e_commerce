import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0XFF949D9E), thickness: 1)),
        SizedBox(width: 8),
        Text('أو', style: TextStyles.semiBold16.copyWith(color: Colors.black)),

        SizedBox(width: 8),
        Expanded(child: Divider(color: Color(0XFF949D9E), thickness: 1)),
      ],
    );
  }
}
