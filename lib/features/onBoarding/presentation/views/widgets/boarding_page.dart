import 'package:flutter/material.dart';
import 'package:lazeez/core/styles.dart';
import 'package:lazeez/features/onBoarding/data/model/onboarding_model.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key, required this.model});
  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          child: Image.asset(model.imageLink),
        ),
        Text(
          model.title,
          style: Styles.onBoardingStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Text(
          model.content,
          style: Styles.onBoardingStyle22,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
