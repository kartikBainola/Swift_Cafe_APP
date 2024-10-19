import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seequenze_technologies/loginpage/loginpage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/image/background_image.jpeg',
            fit: BoxFit.cover,
          ),
          // Lottie Animation
          Center(
            child: LottieBuilder.asset(
              "assets/animations/Animation - 1728978031660.json",
            ),
          ),
        ],
      ),
      nextScreen: Loginpage(),
      splashIconSize: double.infinity, // This makes the splash fill the screen
      backgroundColor: Colors.transparent, // Make the background transparent
      duration: 3000, // Duration in milliseconds
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
