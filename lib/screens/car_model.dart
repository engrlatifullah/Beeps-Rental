import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/screens/profile.dart';
import 'package:beeps_rental/widget/header_card.dart';
import 'package:flutter/material.dart';

import '../widget/reusable_text.dart';

class CarModel extends StatefulWidget {
  const CarModel({Key? key}) : super(key: key);

  @override
  State<CarModel> createState() => _CarModelState();
}

class _CarModelState extends State<CarModel> {
  bool pricing = false;
  bool location = false;
  bool instruction = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  opendrawer(){
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Profile(),
        key: _scaffoldKey,
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCard(onTap: opendrawer,),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ReusableText(
                title: "Model S P 90 D",
                size: 24,
                weight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/Tesla-Model-S-PNG-Image 2.png")),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: ReusableText(
                        title: "Model S P 90D",
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                      subtitle: ReusableText(
                        title: "256 km Driven",
                        size: 15,
                        weight: FontWeight.w700,
                        color: greyColor,
                      ),
                      trailing: Icon(Icons.message),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            fillColor: MaterialStateProperty.all(redColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: redColor)
                            ),
                            value: pricing,
                            onChanged: (v) {
                              setState(() {
                                pricing = v!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: "Pricing & Discounts",
                          weight: FontWeight.w700,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: greyColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            fillColor: MaterialStateProperty.all(redColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: redColor)
                            ),
                            value: location,
                            onChanged: (v) {
                              setState(() {
                                location = v!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: "Location & Delivery",
                          weight: FontWeight.w700,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: greyColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Checkbox(
                            fillColor: MaterialStateProperty.all(redColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: redColor)
                            ),
                            value: instruction,
                            onChanged: (v) {
                              setState(() {
                                instruction = v!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: "Guest Instruction",
                          weight: FontWeight.w700,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: greyColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
