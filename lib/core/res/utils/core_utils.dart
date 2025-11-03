import 'package:flutter/material.dart';
import 'package:kevin_ecomly/core/extensions/context_extension.dart';

abstract class CoreUtils {
  const CoreUtils();

  static Color adaptiveColour(
    BuildContext context, {
    required Color lightModeColour,
    required Color darkModeColour,
  }) {
    return context.isDarkMode ? darkModeColour : lightModeColour;
  }
}
