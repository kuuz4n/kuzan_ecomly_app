import 'package:flutter/material.dart';

class OnboadringScreen extends StatefulWidget {
  const OnboadringScreen({super.key});

  @override
  State<OnboadringScreen> createState() => _OnboadringScreenState();
}

class _OnboadringScreenState extends State<OnboadringScreen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PageView(
            allowImplicitScrolling: true,
            controller: pageController,
            children: const [],
          ),
        ),
      ),
    );
  }
}
