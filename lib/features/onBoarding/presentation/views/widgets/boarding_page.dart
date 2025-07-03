import 'package:flutter/material.dart';
import 'package:lazeez/core/styles.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({
    super.key,
    required this.imageLink,
    required this.title,
    required this.content,
  });
  final String imageLink;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          child: Image.asset(imageLink),
        ),
        Text(
          title,
          style: Styles.onBoardingStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Text(
          content,
          style: Styles.onBoardingStyle22,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
