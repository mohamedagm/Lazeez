import 'package:flutter/material.dart';
import 'package:lazeez/features/onBoarding/data/model/onboarding_model.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/boarding_page.dart';

class PageViewBody extends StatelessWidget {
  final PageController pageController;
  final int currentPage;
  final Function(int)? onPageChanged;

  const PageViewBody({
    required this.pageController,
    required this.currentPage,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: List.generate(
          4,
          (index) => BoardingPage(model: onboardingModeList[index]),
        ),
      ),
    );
  }
}
