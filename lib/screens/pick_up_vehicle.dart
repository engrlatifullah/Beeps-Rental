import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/screens/pick_up_screen.dart';
import 'package:beeps_rental/screens/profile.dart';
import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../widget/border_button.dart';
import '../widget/header_card.dart';
import '../widget/reusable_row.dart';
import '../widget/reusable_text.dart';

class PickUpVehicle extends StatefulWidget {
  const PickUpVehicle({Key? key}) : super(key: key);

  @override
  State<PickUpVehicle> createState() => _PickUpVehicleState();
}

class _PickUpVehicleState extends State<PickUpVehicle> {
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
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 1.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Peterson Clark",
                                  size: 16,
                                  weight: FontWeight.w700,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.comment_outlined,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const ReusableText(
                                  title: "Vehicle owner",
                                  weight: FontWeight.w500,
                                  color: greyColor,
                                ),
                                const Spacer(),
                                ...List.generate(5, (index) {
                                  return Icon(
                                    index == 4 ? Icons.star_border : Icons.star,
                                    color: yellowColor,
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Intended Return Date",
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: redColor,
                          ),
                        ),
                        child: Column(
                          children: const [
                            ReusableText(
                              title: "Date",
                              weight: FontWeight.w700,
                            ),
                            ReusableText(
                              title: "June 10, 2021",
                              weight: FontWeight.w700,
                              size: 12,
                              color: redColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: redColor,
                          ),
                        ),
                        child: Column(
                          children: const [
                            ReusableText(
                              title: "Time",
                              weight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ReusableText(
                              title: "10 pm",
                              weight: FontWeight.w700,
                              size: 12,
                              color: redColor,
                            ),
                          ],
                        ),
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
                  Row(
                    children: [
                      Expanded(
                        child: ReusableButton(
                          onTap: () {},
                          title: "Chat",
                          color: greenColor,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: BorderButton(
                          onTap: () {},
                          title: "Cancel Trip",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Profile();
                          }),
                        );
                      },
                      title: "Pick Up Vehicle")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
