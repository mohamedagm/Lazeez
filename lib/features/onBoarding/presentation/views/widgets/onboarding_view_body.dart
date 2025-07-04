import 'package:flutter/material.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/custom_indicator.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/custom_text_button_boarding.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/page_view_body.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageViewBody(
            onPageChanged:
                (value) => setState(() {
                  currentPage = value;
                }),
            pageController: pageController,
            currentPage: currentPage,
          ),
          CustomIndicator(
            pageController: pageController,
            currentPage: currentPage,
          ),
          CustomTextButtonBoarding(pageController: pageController),
        ],
      ),
    );
  }
}
