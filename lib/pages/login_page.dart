import 'package:cafe/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(),
                  child: Image.asset(
                    "assets/images/cafe.jpeg",
                    height: 200,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Login to Have Cafe",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown.shade400,
                    fontFamily: 'hello'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Email", hintText: "Enter your E-mail"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "password",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Forgot Password?"),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, MyRoutes.forgot_passwordRoute);
                    },
                    child: const Text(
                      "Reset password",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown.shade300,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.only(
                      top: 12, left: 34, right: 34, bottom: 12),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.HomeRoute);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't Have an Account?"),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.registerRoute);
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
