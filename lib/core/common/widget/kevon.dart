import 'package:flutter/material.dart';
import 'package:kevin_ecomly/core/extensions/text_style_extension.dart';
import 'package:kevin_ecomly/core/res/styles/colours.dart';
import 'package:kevin_ecomly/core/res/styles/text.dart';

class KevonLogo extends StatelessWidget {
  const KevonLogo({super.key, this.style});

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Kevon Store',
        style: style ?? TextStyles.appLogo.white,
        children: const [
          TextSpan(
            text: 'ly',
            style: TextStyle(color: Colours.lightThemeSecondaryColour),
          ),
        ],
      ),
    );
  }
}
