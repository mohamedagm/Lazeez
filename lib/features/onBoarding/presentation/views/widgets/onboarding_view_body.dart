import 'package:flutter/material.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/boarding_page.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              children: [
                BoardingPage(
                  imageLink: 'assets/images/image1.png',
                  title: 'Wide Selection',
                  content: 'More than 400 restaurants nationwide.',
                ),
                BoardingPage(
                  imageLink: 'assets/images/image2.png',
                  title: 'Fast Delivery',
                  content: 'Receive goods after 10 minutes.',
                ),
                BoardingPage(
                  imageLink: 'assets/images/image3.png',
                  title: 'Order Tracking',
                  content: 'Track your orders in real-time.',
                ),
                BoardingPage(
                  imageLink: 'assets/images/image4.png',
                  title: 'Special offers',
                  content: 'Weekly deals and discounts.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
