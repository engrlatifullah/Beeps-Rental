import 'package:beeps_rental/screens/extend_trip19.dart';
import 'package:beeps_rental/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/border_button.dart';
import '../widget/header_card.dart';
import '../widget/reusable_text.dart';
import 'end_trip22.dart';

class UploadPhotos extends StatefulWidget {
  const UploadPhotos({Key? key}) : super(key: key);

  @override
  State<UploadPhotos> createState() => _UploadPhotosState();
}

class _UploadPhotosState extends State<UploadPhotos> {

  final List<String> image = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/3.png",
  ];
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
                    title: "Vehicle Photos",
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(image.length, (index){
                      return Image.asset(image[index]);
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ReusableButton(onTap: (){}, title: "Upload Photos",color: blueColor,),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  ReusableButton(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return const EndTrip22();
                    },),);
                  }, title: "End Trip",),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
