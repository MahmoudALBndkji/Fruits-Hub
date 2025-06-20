import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/domain/repository/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/logic/signin-cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/sign-in/signin_view_body_bloc_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const routeName = "signin";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(GetIt.I<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(title: "تسجيل دخول"),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

