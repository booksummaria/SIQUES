import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'loginScreen.dart'; // Assuming your login screen is named LoginScreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Happy user icon from network image
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20.0,
            ), // Rounded corners for the image
            child: Image.network(
              'https://thumbs.dreamstime.com/b/happy-boy-cartoon-illustration-smiling-child-hands-cheeks-cheerful-his-big-smile-376270151.jpg', // Happy user icon URL
              width: 120, // Slightly larger image
              height: 120,
              fit: BoxFit.cover, // Use cover to fill the space
            ),
          ),
          const SizedBox(height: 15), // Increased spacing
          const Text(
            'Quality and Excellence',
            style: TextStyle(
              fontSize: 20, // Larger font size
              fontWeight: FontWeight.bold, // Slightly bolder text
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue, // Background color of the splash screen
      nextScreen: const Loginscreen(),
      splashIconSize: 300, // Larger splash icon size
      duration: 2500, // Slightly shorter duration for a snappier feel
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
