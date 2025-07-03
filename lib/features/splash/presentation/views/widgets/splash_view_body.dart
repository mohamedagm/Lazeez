import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazeez/core/utils/assets_data.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    //  animation + Navigate to onBoarding
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [Center(child: SvgPicture.asset(AssetsData.logo))],
      ),
    );
  }
}
