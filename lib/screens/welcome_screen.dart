import 'package:beeps_rental/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: ReusableText(
                  title: "Welcome to",
                  size: 16,
                  weight: FontWeight.w700,
                ),
              ),
              const ReusableText(
                title: "BEEPZ",
                family: "TESLA",
                size: 40,
                color: redColor,
              ),
              const ReusableText(
                title: "RENTALS",
                family: "Catamaran",
                weight: FontWeight.w700,
                letterSpacing: 16,
                size: 22,
                color: redColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 230,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: redColor,
                    ),
                  ),
                  Image.asset("assets/images/car.png"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LogInScreen();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ReusableText(
                      title: "Login with Beepz",
                      size: 20,
                      weight: FontWeight.w700,
                    ),
                    const CircleAvatar(
                      backgroundColor: redColor,
                      child: Icon(
                        Icons.arrow_forward,
                        color: whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                title: "Don’t have an account?",
                weight: FontWeight.w700,
              ),
              const ReusableText(
                title: "SIGN UP WITH BEEPZ",
                weight: FontWeight.w700,
                color: redColor,
                decoration: TextDecoration.underline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
