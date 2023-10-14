import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_apps/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_ecommerce_apps/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
