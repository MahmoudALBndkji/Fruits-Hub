import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    this.isVisible = true,
    required this.subTitle,
    required this.backgroundImage,
  });
  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "تخط",
                    style: TextStyles.regular13.copyWith(
                      color: Color(0xFF949D9E),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64.0),
        title,
        SizedBox(height: 24.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding * 2.3),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5456),
            ),
          ),
        ),
      ],
    );
  }
}
