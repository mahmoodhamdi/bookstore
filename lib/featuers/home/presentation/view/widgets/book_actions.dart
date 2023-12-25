import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            title: "19.9 \$",
            color: Colors.white,
            textStyle: TextStyles.textStyle18
                .copyWith(fontWeight: FontWeight.w900, color: Colors.black),
          ),
          CustomButton(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            title: "Free Preview",
            color: const Color(0xffef8262),
            textStyle: TextStyles.textStyle18.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
