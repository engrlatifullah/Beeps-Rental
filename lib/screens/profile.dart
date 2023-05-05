import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/widget/header_card.dart';
import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import 'history_screen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const HeaderCard(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage("assets/images/Ellipse 1.png"),
                  ),
                  title: ReusableText(
                    title: "Peterson Clark",
                    size: 20,
                    weight: FontWeight.w700,
                  ),
                  subtitle: ReusableText(
                    title: "View and edit profile",
                    weight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "Account",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "Transaction History",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "Favorites",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "How Works",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "Contact Support",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: "Legal",
                  size: 16,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ReusableText(
                        title: "Log Out",
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
          )
        ],
      ),
    );
  }
}
