import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/screens/pick_up_screen.dart';
import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../widget/header_card.dart';
import '../widget/reusable_row.dart';
import '../widget/reusable_text.dart';

class ApplePay extends StatefulWidget {
  const ApplePay({Key? key}) : super(key: key);

  @override
  State<ApplePay> createState() => _ApplePayState();
}

class _ApplePayState extends State<ApplePay> {
  DateTime selectedDate = DateTime.now();
  bool term = false;

  showDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        selectedDate = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            const HeaderCard(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableText(
                        title: "Model 3",
                        weight: FontWeight.w700,
                        size: 24,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          ReusableText(
                            title: "3.1 s",
                            weight: FontWeight.w700,
                            color: redColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReusableText(
                            title: "0-60 mph",
                            weight: FontWeight.w400,
                            size: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          ReusableText(
                            title: "358mi",
                            weight: FontWeight.w700,
                            color: redColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReusableText(
                            title: "Range",
                            weight: FontWeight.w400,
                            size: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          ReusableText(
                            title: "AWD",
                            weight: FontWeight.w700,
                            color: redColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ReusableText(
                            title: "Dual Motor",
                            weight: FontWeight.w400,
                            size: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/Tesla-Model-S-PNG-Image 2.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ReusableButton(
                              onTap: () {}, title: "PICK UP VEHICLE")),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child:
                              ReusableButton(onTap: () {}, title: "DELIVERY")),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: "Delivered Return Date",
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      showDate();
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                          border: Border.all(color: greyColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title:
                                "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                            color: greyColor,
                          ),
                          const Icon(
                            Icons.calendar_today_outlined,
                            color: redColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableRow(
                    title: "Trip Fee",
                    amount: "\$150.00",
                  ),
                  const ReusableRow(
                    title: "\$140 000 x 1 Day",
                    amount: "\$1400.00",
                  ),
                  const ReusableRow(
                    title: "Minimum Protection",
                    amount: "\$123.00",
                  ),
                  const ReusableRow(
                    title: "Early Bird Discount",
                    amount: "\$7.00",
                  ),
                  const ReusableRow(
                    title: "Total",
                    amount: "\$1680.00",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Checkbox(
                          value: term,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: (v) {
                            setState(() {
                              term = v!;
                            });
                          },
                          side: const BorderSide(color: redColor, width: 2),
                          fillColor: MaterialStateProperty.all(redColor),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: "Confrim Selection",
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ReusableButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return PickUpScreen();
                            },
                          ),
                        );
                      },
                      title: "CONTINUE WITH APPLE PAY"),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
