import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cafe/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Lottie.asset("assets/animation/loading.json"),
          ),
          const SizedBox(
              // height: 20,
              ),
          const Text(
            "Have a Caffe",
            style: TextStyle(
              fontFamily: 'mono',
              fontSize: 14z,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      duration: 4000,
      nextScreen: const LoginPage(),
    );
  }
}
