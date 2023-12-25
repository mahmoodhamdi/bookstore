import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.color,
      required this.textStyle,
      required this.borderRadius});
  final String title;
  final Color color;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: color,
        ),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
