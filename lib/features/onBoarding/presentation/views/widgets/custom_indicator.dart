import 'package:flutter/material.dart';
import 'package:lazeez/core/utils/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
