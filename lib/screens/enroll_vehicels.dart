import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'apple_pay.dart';

class EnrollVehicles extends StatefulWidget {
  const EnrollVehicles({Key? key}) : super(key: key);

  @override
  State<EnrollVehicles> createState() => _EnrollVehiclesState();
}

class _EnrollVehiclesState extends State<EnrollVehicles> {
  bool check = false;
  bool selection = false;
  bool term = false;
  bool privacy = false;
  bool vehicle = false;

  List boolValues = [
    false,
    false,
    false,
    false,
    false,
  ];

  bool selectionVisibility = false;
  bool termVisibility = false;
  bool privacyVisibility = false;
  bool vehicleVisibility = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.12,
              color: redColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ReusableText(
                        title: "Enroll Vehicles",
                        size: 24,
                        weight: FontWeight.w700,
                        color: whiteColor,
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 1.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ReusableText(
                    title: "Enroll Vehicles",
                    weight: FontWeight.w700,
                    size: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.45,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const ReusableText(
                                          title: "Model",
                                          weight: FontWeight.w700,
                                          size: 20,
                                        ),
                                        Checkbox(
                                          value: boolValues[index],
                                          onChanged: (v) {
                                            setState(() {
                                              boolValues[index] = v!;
                                            });
                                          },
                                          side: const BorderSide(
                                              color: redColor, width: 2),
                                          fillColor: MaterialStateProperty.all(
                                              redColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            ReusableText(
                                              title: "3.1 s",
                                              weight: FontWeight.w700,
                                              color: redColor,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            ReusableText(
                                              title: "0-60 mph",
                                              weight: FontWeight.w400,
                                              size: 10,
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
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            ReusableText(
                                              title: "Range",
                                              weight: FontWeight.w400,
                                              size: 10,
                                              color: greyColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        ReusableText(
                                          title: "AWD",
                                          weight: FontWeight.w700,
                                          color: redColor,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        ReusableText(
                                          title: "Dual Motor",
                                          weight: FontWeight.w400,
                                          size: 10,
                                          color: greyColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                      "assets/images/White-Tesla.png")),
                              const Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  alignment: Alignment.centerRight,
                                  decoration: const BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      ReusableText(
                                        title: "BOOK NOW",
                                        weight: FontWeight.w700,
                                        color: whiteColor,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: whiteColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Rental Agreement
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectionVisibility = !selectionVisibility;
                      });
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            value: selection,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (v) {
                              setState(() {
                                selection = v!;
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
                          weight: FontWeight.w600,
                        ),
                        const Spacer(),
                        Icon(selectionVisibility
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: selectionVisibility,
                    child: const ReusableText(
                      color: greyColor,
                      title:
                          "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  //Terms of service
                  InkWell(
                    onTap: () {
                      setState(() {
                        termVisibility = !termVisibility;
                      });
                    },
                    child: Row(
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
                          title: "Terms of Service",
                          weight: FontWeight.w600,
                        ),
                        const Spacer(),
                        Icon(termVisibility
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: termVisibility,
                    child: const ReusableText(
                      color: greyColor,
                      title:
                          "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  //Privacy policy
                  InkWell(
                    onTap: () {
                      setState(() {
                        privacyVisibility = !privacyVisibility;
                      });
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            value: privacy,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (v) {
                              setState(() {
                                privacy = v!;
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
                          title: "Privacy Policy",
                          weight: FontWeight.w600,
                        ),
                        const Spacer(),
                        Icon(privacyVisibility
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: privacyVisibility,
                    child: const ReusableText(
                      color: greyColor,
                      title:
                          "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),

                  //Vehicle Enrollment Agreement

                  const Divider(
                    height: 20,
                  ),
                  //Owner agreement
                  InkWell(
                    onTap: () {
                      setState(() {
                        vehicleVisibility = !vehicleVisibility;
                      });
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            value: vehicle,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onChanged: (v) {
                              setState(() {
                                vehicle = v!;
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
                          title: "I Accept all important terms",
                          weight: FontWeight.w600,
                        ),
                        const Spacer(),
                        Icon(vehicleVisibility
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: vehicleVisibility,
                    child: const ReusableText(
                      color: greyColor,
                      title:
                          "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ReusableButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ApplePay();
                          },
                        ),
                      );
                    },
                    title: "ENROLL VEHICLES",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
