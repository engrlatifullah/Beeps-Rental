import 'package:beeps_rental/constant.dart';
import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const BorderButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: redColor,width: 2)
        ),
        alignment: Alignment.center,
        child:  ReusableText(title: title,size: 15,weight: FontWeight.w600,color: redColor,),
      ),
    );
  }
}
