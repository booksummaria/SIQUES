import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:forgot/app_colors.dart';
import 'package:forgot/home_screen.dart';
import 'package:page_transition/page_transition.dart';
// import 'loginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://thumbs.dreamstime.com/b/happy-boy-cartoon-illustration-smiling-child-hands-cheeks-cheerful-his-big-smile-376270151.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Quality and Excellence',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.primary,
      // nextScreen: const Loginscreen(),
      nextScreen: HomeScreen(),
      splashIconSize: 300,
      duration: 2500,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
