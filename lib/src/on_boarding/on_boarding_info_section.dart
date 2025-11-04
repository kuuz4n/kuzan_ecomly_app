import 'package:flutter/material.dart';
import 'package:kevin_ecomly/core/extensions/text_style_extension.dart';
import 'package:kevin_ecomly/core/res/media.dart';
import 'package:kevin_ecomly/core/res/styles/colours.dart';
import 'package:kevin_ecomly/core/res/styles/text.dart';

class OnBoardingInfoSection extends StatelessWidget {
  const OnBoardingInfoSection.first({super.key}) : first = true;
  const OnBoardingInfoSection.second({super.key}) : first = false;

  final bool first;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(first ? Media.onBoardingFemale : Media.onBoardingMale),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            switch (first) {
              true => Text.rich(
                // textAlign: TextAlign.left,
                TextSpan(
                  text: '${DateTime.now().year}\n',
                  style: TextStyles.headingBold.orange,
                  children: [
                    TextSpan(
                      text: 'Winter Sale is live!',
                      style: TextStyle(
                        color: Colours.classicAdaptiveTextColour(context),
                      ),
                    ),
                  ],
                ),
              ),
              _ => Text.rich(
                textAlign: TextAlign.left,
                TextSpan(
                  text: 'Flash Sale \n',
                  style: TextStyles.headingBold.adaptiveColour(context),
                  children: [
                    const TextSpan(
                      text: "Men's \n",
                      style: TextStyle(
                        color: Colours.lightThemeSecondaryTextColour,
                      ),
                    ),
                    TextSpan(
                      text: 'Shirts & Watches',
                      style: TextStyle(
                        color: Colours.classicAdaptiveTextColour(context),
                      ),
                    ),
                  ],
                ),
              ),
            },
          ],
        ),
      ],
    );
  }
}
