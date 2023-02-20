import 'package:beeps_rental/constant.dart';
import 'package:flutter/material.dart';

import '../widget/reusable_text.dart';
import 'dashboard.dart';

class AgreementScreen extends StatefulWidget {
  const AgreementScreen({Key? key}) : super(key: key);

  @override
  State<AgreementScreen> createState() => _AgreementScreenState();
}

class _AgreementScreenState extends State<AgreementScreen> {
  bool agreement = false;
  bool term = false;
  bool privacy = false;
  bool owner = false;
  bool vehicle = false;
  bool accept = false;

  bool agreementVisibility = false;
  bool termVisibility = false;
  bool privacyVisibility = false;
  bool ownerVisibility = false;
  bool vehicleVisibility = false;
  bool acceptVisibility = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: redColor,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const ReusableText(
              title: "BEEPZ",
              family: "TESLA",
              size: 48,
              color: whiteColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    //Rental Agreement
                    InkWell(
                      onTap: (){
                        setState(() {
                          agreementVisibility = !agreementVisibility;
                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Checkbox(
                              value: agreement,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              ),
                              onChanged: (v) {
                                setState(() {
                                  agreement = v!;
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
                            title: "Renter Agreement",
                            weight: FontWeight.w600,
                          ),
                          const Spacer(),
                           Icon(agreementVisibility ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_sharp),

                        ],
                      ),
                    ),
                     Visibility(
                      visible: agreementVisibility,
                      child: const ReusableText(
                        color: greyColor,
                      title: "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                    ),),
                    const Divider(height: 20,),
                    //Terms of service
                    InkWell(
                      onTap: (){
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
                                  borderRadius: BorderRadius.circular(5)
                              ),
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
                          Icon(termVisibility ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_sharp),

                        ],
                      ),
                    ),
                    Visibility(
                      visible: termVisibility,
                      child: const ReusableText(
                        color: greyColor,
                        title: "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                      ),),
                    const Divider(height: 20,),
                    //Privacy policy
                    InkWell(
                      onTap: (){
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
                                  borderRadius: BorderRadius.circular(5)
                              ),
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
                          Icon(privacyVisibility ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_sharp),

                        ],
                      ),
                    ),
                    Visibility(
                      visible: privacyVisibility,
                      child: const ReusableText(
                        color: greyColor,
                        title: "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                      ),),
                    const Divider(height: 20,),

                    //Vehicle Enrollment Agreement
                    InkWell(
                      onTap: (){
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
                                  borderRadius: BorderRadius.circular(5)
                              ),
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
                            title: "Vehicle Enrollment Agreement",
                            weight: FontWeight.w600,
                          ),
                          const Spacer(),
                          Icon(vehicleVisibility ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_sharp),

                        ],
                      ),
                    ),
                    Visibility(
                      visible: vehicleVisibility,
                      child: const ReusableText(
                        color: greyColor,
                        title: "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                      ),),
                    const Divider(height: 20,),
                    //Owner agreement
                    InkWell(
                      onTap: (){
                        setState(() {
                          acceptVisibility = !acceptVisibility;
                        });
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Checkbox(
                              value: accept,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              onChanged: (v) {
                                setState(() {
                                  accept = v!;
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
                          Icon(acceptVisibility ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_sharp),

                        ],
                      ),
                    ),
                    Visibility(
                      visible: acceptVisibility,
                      child: const ReusableText(
                        color: greyColor,
                        title: "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam tincidunt urna. Enim, sem augue placerat purus. At cursus turpis pretium quam vulputate tortor. Id duis non, sollicitudin adipiscing erat auctor. Ullamcorper pellentesque in proin sit vulputate.",
                      ),),
                    const Divider(height: 20,),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const DashBoard();
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          ReusableText(
                            title: "Continue",
                            size: 20,
                            weight: FontWeight.w700,
                          ),
                          CircleAvatar(
                            backgroundColor: redColor,
                            child: Icon(
                              Icons.arrow_forward,
                              color: whiteColor,
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
