import 'package:flutter/material.dart';
import 'package:kevin_ecomly/core/common/widget/kevon.dart';
import 'package:kevin_ecomly/core/res/styles/colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.lightThemePrimaryColour,
      body: Center(child: KevonLogo()),
    );
  }
}
