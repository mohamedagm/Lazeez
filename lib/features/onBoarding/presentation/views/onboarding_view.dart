import 'package:flutter/material.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingViewBody(),
      //backgroundColor: kPrimaryColor
    );
  }
}
