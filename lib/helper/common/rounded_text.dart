import 'package:flutter/material.dart';

class RoundedText extends StatelessWidget {

  final EdgeInsetsGeometry? padding;
  final Color? boxColor,textColor;
  final String? text;
  final bool? isBorder;

  const RoundedText({
    Key? key,
    this.padding,
    this.boxColor,
    this.text,
    this.textColor,
    this.isBorder =false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          border: isBorder == true ? Border.all(color: boxColor!) : null,
          color: isBorder != true ? boxColor : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
      ),
    );
  }
}