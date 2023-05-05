import 'package:beeps_rental/screens/profile.dart';
import 'package:beeps_rental/widget/car_model_card.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'car_model.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool history = true;
  bool currentTrip = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Profile(),
        key: _scaffoldKey,
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
                      InkWell(
                          onTap: (){
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Image.asset("assets/icons/menue.png")),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      InkWell(
                        onTap: (){
                          setState(() {
                            currentTrip = true;
                            history = false;
                          });
                        },
                        child:  ReusableText(
                          title: "Current Trip",
                          size: 20,
                          weight: FontWeight.w700,
                          color: currentTrip  ?  redColor : blackColor,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            history = true;
                            currentTrip = false;
                          });
                        },
                        child:  ReusableText(
                          title: "History",
                          size: 20,
                          weight: FontWeight.w700,
                          color: history ? redColor : blackColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 4,
                    color: lightGreyColor,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 4,
                                color: currentTrip ? redColor : transparentColor,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 4,
                                color: history ? redColor : transparentColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  history ? ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_,index){
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              const ReusableText(
                                title: "Model",
                                weight: FontWeight.w700,
                                size: 20,
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
                              ),


                            ],
                          ),),
                          SizedBox(height: 20,),
                          Align(
                              alignment: Alignment.center,
                              child: Image.asset("assets/images/cr.png")),
                          Spacer(),
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
                                children:  [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                        return const CarModel();
                                      }));
                                    },
                                    child: ReusableText(
                                      title: "BOOK AGAIN",
                                      weight: FontWeight.w700,
                                      color: whiteColor,
                                      size: 18,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,color: whiteColor,)
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    );
                  }) : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
