import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible,
  });

  final String image;
  final String backgroundImage;
  final String subTitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(image, fit: BoxFit.contain),
                ),
              ),

              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    prefs.setBool(isOnBoardingViewSeenkey, true);
                    Navigator.of(
                      context,
                    ).pushReplacementNamed(LoginView.routeName);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'تخط',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 64),

        title,

        const SizedBox(height: 24),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            style: TextStyles.semiBold13.copyWith(color: Color(0XFF4E5456)),
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
