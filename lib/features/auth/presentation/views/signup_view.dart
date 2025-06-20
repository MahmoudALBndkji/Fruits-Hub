import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/domain/repository/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/logic/signup-cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/sign-up/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(GetIt.I<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(title: 'حساب جديد'),
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
