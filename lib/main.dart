import 'package:flutter/material.dart';
import 'package:lazeez/core/utils/app_router.dart';

void main() {
  runApp(const LazeezApp());
}

class LazeezApp extends StatelessWidget {
  const LazeezApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
