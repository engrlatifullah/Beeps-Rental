import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../widget/car_model_card.dart';
import '../widget/reusable_button.dart';
import 'enroll_vehicels.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> model = [
    "All",
    "Model S",
    "Model 3",
    "Model X",
    "Model Z",
  ];

  int _currentIndex = 0;
  bool check = false;

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
              height: MediaQuery.of(context).size.height * 0.18,
              color: redColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/menue.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      const ReusableText(
                        title: "Hi, Peterson",
                        size: 16,
                        weight: FontWeight.w600,
                        color: whiteColor,
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 1.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: "Dashboard",
                    size: 24,
                    weight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      ReusableText(
                        title: "Choose a Model",
                        size: 20,
                        weight: FontWeight.w700,
                      ),
                      Spacer(),
                      ReusableText(
                        title: "View All",
                        weight: FontWeight.w400,
                        color: blueColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        model.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: index == _currentIndex
                                    ? redColor
                                    : backgroundColor,
                                border: Border.all(color: redColor),
                              ),
                              child: ReusableText(
                                title: model[index],
                                weight: FontWeight.w600,
                                color: index == _currentIndex
                                    ? whiteColor
                                    : redColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CarModelCard(),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      const ReusableText(
                        title: "Available Now",
                        size: 20,
                        weight: FontWeight.w700,
                      ),

                      Spacer(),
                      ReusableText(
                        title: "View All",
                        weight: FontWeight.w400,
                        color: blueColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.64,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemBuilder: (_, index) {
                        return const CarModelCard();
                      }),
                  const SizedBox(height: 20,),
                  const ReusableText(title: "Enroll Vehicles",size: 20,weight: FontWeight.w700,),
                  const SizedBox(height: 20,),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      padding: const EdgeInsets.only(right: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (_, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const ReusableText(
                                        title: "Model",
                                        weight: FontWeight.w700,
                                        size: 20,
                                      ),
                                      Checkbox(value: check, onChanged: (v){
                                        setState(() {
                                          check = v!;
                                        });
                                      },
                                        side: const BorderSide(color: redColor, width: 2),
                                        fillColor: MaterialStateProperty.all(redColor),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          ReusableText(
                                            title: "3.1 s",
                                            weight: FontWeight.w700,
                                            color: redColor,
                                            size: 12,
                                          ),
                                          SizedBox(width: 2,),
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
                                          SizedBox(width: 5,),
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
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: const [
                                      ReusableText(
                                        title: "AWD",
                                        weight: FontWeight.w700,
                                        color: redColor,
                                        size: 12,
                                      ),
                                      SizedBox(width: 5,),
                                      ReusableText(
                                        title: "Dual Motor",
                                        weight: FontWeight.w400,
                                        size: 10,
                                        color: greyColor,
                                      ),

                                    ],
                                  ),
                                ],
                              ),),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset("assets/images/White-Tesla.png")),
                              const Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  alignment: Alignment.centerRight,
                                  decoration: const BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      ReusableText(
                                        title: "BOOK NOW",
                                        weight: FontWeight.w700,
                                        color: whiteColor,
                                        size: 18,
                                      ),
                                      Icon(Icons.arrow_forward,color: whiteColor,)
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        );
                      }),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ReusableButton(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return const EnrollVehicles();
                      },),);
                    }, title: 'CONTINUE',),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
