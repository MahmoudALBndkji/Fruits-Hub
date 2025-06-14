import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/sign-in/signin_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const routeName = "signin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "تسجيل دخول"),
      body: SignInViewBody(),
    );
  }
}
