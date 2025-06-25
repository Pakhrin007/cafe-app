import 'package:cafe/pages/forgot_password.dart';
import 'package:cafe/pages/home_page.dart';
import 'package:cafe/pages/login_page.dart';
import 'package:cafe/pages/register_page.dart';
import 'package:cafe/pages/splash_screen.dart';
import 'package:cafe/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
        "/forgot_password": (context) => const ForgotPassword(),
        MyRoutes.HomeRoute: (context) => const HomePage(),
      },
    );
  }
}
