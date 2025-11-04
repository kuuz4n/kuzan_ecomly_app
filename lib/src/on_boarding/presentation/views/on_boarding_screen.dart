import 'package:flutter/material.dart';
import 'package:kevin_ecomly/src/on_boarding/on_boarding_info_section.dart';

class OnboadringScreen extends StatefulWidget {
  const OnboadringScreen({super.key});

  @override
  State<OnboadringScreen> createState() => _OnboadringScreenState();
}

class _OnboadringScreenState extends State<OnboadringScreen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    debugPrint('Onboarding Build');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PageView(
            allowImplicitScrolling: true,
            controller: pageController,
            children: const [
              OnBoardingInfoSection.first(),
              OnBoardingInfoSection.second(),
            ],
          ),
        ),
      ),
    );
  }
}
