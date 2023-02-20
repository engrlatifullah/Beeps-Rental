import 'package:beeps_rental/screens/agreement_Screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_button.dart';
import '../widget/reusable_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const ReusableText(
                title: "BEEPZ",
                family: "TESLA",
                size: 48,
                color: redColor,
              ),
              const ReusableText(
                title: "RENTALS",
                family: "Catamaran",
                weight: FontWeight.w700,
                letterSpacing: 16,
                size: 24,
                color: redColor,
              ),
              const SizedBox(height: 70,),
              TextFormField(
                decoration:  const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: blackColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blackColor)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blackColor)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration:  const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: blackColor,fontWeight: FontWeight.w400),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blackColor)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blackColor)
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Align(
                alignment: Alignment.centerRight,
                child: ReusableText(
                  title: "Forgot Password?",
                  weight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  color: greyColor,
                ),
              ),
              const SizedBox(height: 40,),
              ReusableButton(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const AgreementScreen();
                }));
              }, title: 'Sign IN',)
            ],
          ),
        ),
      ),
    );
  }
}


