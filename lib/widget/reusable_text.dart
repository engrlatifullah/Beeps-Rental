import 'package:flutter/material.dart';
class ReusableText extends StatelessWidget {
  final String title;
  final double ? size;
  final FontWeight ? weight;
  final String ? family;
  final Color ? color;
  final double ? letterSpacing;
  final TextDecoration ? decoration;


  const ReusableText({
    super.key, required this.title, this.size, this.weight, this.family, this.color, this.letterSpacing, this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
        fontSize: size,fontWeight: weight,fontFamily: family,color: color,letterSpacing:letterSpacing, decoration: decoration
    ),);
  }
}