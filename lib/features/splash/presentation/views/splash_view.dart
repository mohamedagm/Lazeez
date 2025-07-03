import 'package:flutter/material.dart';
import 'package:lazeez/core/utils/constants.dart';
import 'package:lazeez/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor, body: SplashViewBody());
  }
}
