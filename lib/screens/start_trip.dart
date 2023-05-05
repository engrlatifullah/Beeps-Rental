import 'package:beeps_rental/screens/cancel_booking.dart';
import 'package:beeps_rental/screens/profile.dart';
import 'package:beeps_rental/widget/header_card.dart';
import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:beeps_rental/widget/reusable_row.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';

class StartTrip extends StatefulWidget {
  const StartTrip({Key? key}) : super(key: key);

  @override
  State<StartTrip> createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  opendrawer(){
    _scaffoldKey.currentState!.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Profile(),
        key: _scaffoldKey,
        body: ListView(
          children: [
            HeaderCard(onTap: opendrawer,),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map.png"))),
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
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
                                        index == 4
                                            ? Icons.star_border
                                            : Icons.star,
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
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableRow(title: "Model S", amount: "13.5 Km"),
                      const Divider(),
                      const SizedBox(height: 10,),
                      const ReusableText(
                        title:
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam ",
                        color: greyColor,weight: FontWeight.w400,
                      ),
                      const SizedBox(height: 10,),
                      const Divider(),
                      const SizedBox(height: 10,),
                      const ReusableText(
                        title: "Pick up Details",
                        weight: FontWeight.w700,
                      ),
                      const SizedBox(height: 10,),
                      const ReusableText(
                        title:
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Amet at tempor euismod sed nullam ",
                        color: greyColor,weight: FontWeight.w400,
                      ),
                      const Divider(),
                      const SizedBox(height: 10,),
                      ReusableButton(onTap: (){}, title: "GET DIRECTIONS",color: deepPurpleColor,),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(child: ReusableButton(onTap: (){}, title: "Uber",color: blackColor,)),
                          SizedBox(width: 20,),
                          Expanded(child: ReusableButton(onTap: (){}, title: "Lyft",color: pinkColor,)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      ReusableButton(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const CancelBooking();
                        }),);
                      }, title: "START TRIP"),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
