import 'package:flutter/material.dart';
import 'package:proapp/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;
  const CustomText(
    this.text, {
    this.fontSize = 30,
    this.fontWeight = FontWeight.w600,
    this.color = AppColors.primaryColor,
    this.textAlign = TextAlign.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
