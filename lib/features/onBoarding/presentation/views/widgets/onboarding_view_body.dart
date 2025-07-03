import 'package:flutter/material.dart';
import 'package:lazeez/core/styles.dart';
import 'package:lazeez/core/utils/constants.dart';
import 'package:lazeez/features/onBoarding/presentation/views/widgets/boarding_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  pageController.animateToPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    3,
                  );
                },
                child: Text('skip', style: Styles.onBoardingStyle22),
              ),
              Column(
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 4,
                    effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Colors.black,
                      dotColor: Colors.grey,
                    ),
                  ),
                  //manually
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(4, (index) {
                  //     bool isActive = currentPage == index;
                  //     return AnimatedContainer(
                  //       duration: Duration(milliseconds: 300),
                  //       width: isActive ? 25 : 10,
                  //       height: 10,
                  //       margin: EdgeInsets.symmetric(horizontal: 4),
                  //       decoration: BoxDecoration(
                  //         color: isActive ? Colors.black : Colors.grey,
                  //         borderRadius: BorderRadius.circular(16),
                  //       ),
                  //     );
                  //   }),
                  // ),
                  SizedBox(height: 20),
                  CircularPercentIndicator(
                    animateFromLastPercent: true,
                    radius: 40,
                    percent: (currentPage + 1) / 4,
                    animation: true,
                    animationDuration: 300,
                    center: IconButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 55,
                        //color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.grey.shade300,
                    progressColor:
                        currentPage == 0
                            ? Color(0xffFFA8A8)
                            : currentPage == 1
                            ? Color(0xffFF6B6B)
                            : currentPage == 2
                            ? kPrimaryColor
                            : Color(0xffFF3B3B),
                  ),
                  //manually
                  // Stack(
                  //   alignment: Alignment.center,
                  //   children: [
                  //     SizedBox(
                  //       width: 80,
                  //       height: 80,
                  //       child: CircularProgressIndicator(
                  //         value: (currentPage + 1) / 4,
                  //         backgroundColor: Colors.grey.shade300,
                  //         valueColor: AlwaysStoppedAnimation(
                  //           currentPage == 0
                  //               ? Color(0xffFFA8A8)
                  //               : currentPage == 1
                  //               ? Color(0xffFF6B6B)
                  //               : currentPage == 2
                  //               ? kPrimaryColor
                  //               : Color(0xffFF3B3B),
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         color: Color(0xffFF6347),
                  //         shape: BoxShape.circle,
                  //       ),
                  //       child: Center(
                  //         child: IconButton(
                  //           onPressed: () {
                  //             pageController.nextPage(
                  //               duration: Duration(milliseconds: 300),
                  //               curve: Curves.easeInOut,
                  //             );
                  //           },
                  //           icon: Icon(
                  //             Icons.keyboard_arrow_right,
                  //             size: 55,
                  //             //color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 20),
                ],
              ),
              TextButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text('next', style: Styles.onBoardingStyle22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
