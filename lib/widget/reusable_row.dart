import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';
class ReusableRow extends StatelessWidget {
  final String title;
  final String amount;
  const ReusableRow({
    super.key, required this.title, required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(title: title,size: 16,weight: FontWeight.w700,),
          ReusableText(title: amount,size: 16,weight: FontWeight.w700,color:redColor),
        ],
      ),
    );
  }
}