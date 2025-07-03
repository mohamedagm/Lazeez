import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazeez/core/styles.dart';
import 'package:lazeez/core/utils/assets_data.dart';
import 'package:lazeez/core/utils/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  late Animation<double> scaleAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    //  animation + Navigate to onBoarding
    initializeAnimation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(child: SvgPicture.asset(AssetsData.logo)),
          Text('Lazeez Inside ..', style: Styles.splashStyle),

          SizedBox(height: 15),

          AnimatedBuilder(
            animation: animationController,
            builder:
                (context, _) => SlideTransition(
                  position: slideAnimation,
                  child: Transform.scale(
                    scale: scaleAnimation.value,
                    child: Text('Craving Outside', style: Styles.splashStyle),
                  ),
                ),
          ),
        ],
      ),
    );
  }

  void initializeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOutCubic,
      ),
    );
    scaleAnimation = Tween<double>(begin: 0.1, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOutExpo),
    );
    colorAnimation = ColorTween(
      begin: kPrimaryColor,
      end: Colors.black,
    ).animate(animationController);
    animationController.forward();
  }
}
