import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final String title;
  const ReusableButton({
    super.key, required this.onTap,  this.color = redColor, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        color: color,
        alignment: Alignment.center,
        child:  ReusableText(title: title,size: 15,weight: FontWeight.w600,color: whiteColor,),
      ),
    );
  }
}