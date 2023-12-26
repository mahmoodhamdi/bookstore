import 'package:bookstore/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessaage});
  final String errMessaage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessaage,
      style: TextStyles.textStyle20,
    );
  }
}
