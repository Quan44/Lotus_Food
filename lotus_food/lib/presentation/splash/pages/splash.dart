import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_food/common/helper/navigator/app_navigator.dart';
import 'package:lotus_food/core/configs/assets/app_vectors.dart';
import 'package:lotus_food/core/configs/theme/app_colors.dart';
import 'package:lotus_food/presentation/auth/pages/signin.dart';
import 'package:lotus_food/presentation/home/pages/home.dart';
import 'package:lotus_food/presentation/splash/bloc/splash_cubit.dart';
import 'package:lotus_food/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigator.pushReplacement(context, SigninPage());
        }
        if (state is Authenticated) {
          AppNavigator.pushReplacement(context, const HomePage());
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          // child: SvgPicture.asset(
          //   AppVectors.appLogo
          // ),
          child: Image(image: AssetImage(
            AppVectors.appLogo
          )),
        ),
      ),
    );
  }
}