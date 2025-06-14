import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/on-boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = "splash";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context,
          isOnBoardingViewSeen
              ? SignInView.routeName
              : OnBoardingView.routeName);
    });
  }
}
