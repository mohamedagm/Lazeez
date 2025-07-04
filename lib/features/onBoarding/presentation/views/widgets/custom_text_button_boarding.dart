import 'package:flutter/material.dart';
import 'package:lazeez/core/styles.dart';

class CustomTextButtonBoarding extends StatelessWidget {
  const CustomTextButtonBoarding({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        pageController.animateToPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          3,
        );
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text('skip', style: Styles.onBoardingStyle22),
    );
  }
}
