import 'package:beeps_rental/screens/extend_trip19.dart';
import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/border_button.dart';
import '../widget/header_card.dart';
import '../widget/reusable_text.dart';

class EndTrip extends StatefulWidget {
  const EndTrip({Key? key}) : super(key: key);

  @override
  State<EndTrip> createState() => _EndTripState();
}

class _EndTripState extends State<EndTrip> {
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
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Return Address",
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                    "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam ",
                    weight: FontWeight.w400,
                    color: greyColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/map.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Parking Details",
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                    "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam ",
                    weight: FontWeight.w400,
                    color: greyColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Cleaning and Charging Details/ Requirements",
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                    "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam ",
                    weight: FontWeight.w400,
                    color: greyColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReusableButton(
                          onTap: () {},
                          title: "Chat",
                          color: greenColor,
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: BorderButton(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return const ExtendTrip19();
                            },),);
                          },
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
