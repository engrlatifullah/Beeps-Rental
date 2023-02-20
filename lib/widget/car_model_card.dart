import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
class CarModelCard extends StatelessWidget {
  const CarModelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Column(
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
  }
}