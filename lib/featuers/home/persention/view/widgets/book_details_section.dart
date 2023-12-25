import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/book_rating_overview.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The Jungle Book",
          style: TextStyles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: TextStyles.textStyle18.copyWith(
              color: const Color(0xffffffff).withOpacity(.7),
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRatingOverview(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
