import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../constant.dart';
import '../widget/border_button.dart';
import '../widget/header_card.dart';
import '../widget/reusable_text.dart';
import 'end_trip.dart';

class ExtendTrip extends StatefulWidget {
  const ExtendTrip({Key? key}) : super(key: key);

  @override
  State<ExtendTrip> createState() => _ExtendTripState();
}

class _ExtendTripState extends State<ExtendTrip> {
  final List<String> icon = [
    "assets/icons/i1.png",
    "assets/icons/i2.png",
    "assets/icons/i3.png",
    "assets/icons/i4.png",
    "assets/icons/i5.png",
  ];

  bool valetMode = false;
  bool smartSummon = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            const HeaderCard(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: "Model 3",
                        weight: FontWeight.w700,
                        size: 24,
                      ),
                      const Spacer(),
                      const ReusableText(
                        title: "100%",
                        weight: FontWeight.w700,
                        color: redColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            "assets/icons/carbon_battery-full.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/Tesla-Model-S-PNG-Image 2.png"),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      ReusableText(
                        title: "Returned Date",
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ReusableText(
                        title: "Returned Time",
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      ReusableText(
                        title: "June 10, 2021",
                        size: 15,
                        weight: FontWeight.w400,
                        color: redColor,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ReusableText(
                          title: "10:00 PM",
                          size: 15,
                          weight: FontWeight.w400,
                          color: redColor),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      ReusableText(
                        title: "Model S ",
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                      ReusableText(
                        title: "(2 Day)",
                        size: 15,
                        weight: FontWeight.w400,
                        color: greyColor,
                      ),
                      Spacer(),
                      ReusableText(
                        title: "\$120.00",
                        size: 15,
                        weight: FontWeight.w700,
                        color: redColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      ReusableText(
                        title: "256 km Driven",
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                      Spacer(),
                      ReusableText(
                        title: "2 Chamges",
                        size: 15,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Controls",
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: blackColor,
                          ),
                        ),
                        child: const ReusableText(
                          title: "Vent",
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: blackColor,
                          ),
                        ),
                        child: const ReusableText(
                          title: "Unlock",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(icon.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: blackColor,
                          radius: 25,
                          child: Image.asset(icon[index]),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: blackColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        ReusableText(
                          title: "Valet Mode",
                          size: 16,
                          weight: FontWeight.w700,
                        ),
                        FlutterSwitch(value: valetMode,
                            width: 50,
                            activeColor: greenColor,
                            onToggle: (v){
                          setState(() {
                            valetMode = v;
                          });
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: blackColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        ReusableText(
                          title: "Smart Summon",
                          size: 16,
                          weight: FontWeight.w700,
                        ),
                        FlutterSwitch(value: smartSummon,
                            width: 50,
                            activeColor: greenColor,
                            onToggle: (v){
                              setState(() {
                                smartSummon = v;
                              });
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReusableButton(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return const EndTrip();
                            },),);
                          },
                          title: "Extend Trip",
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: BorderButton(
                          onTap: () {},
                          title: "End Trip",
                        ),
                      ),
                    ],
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
