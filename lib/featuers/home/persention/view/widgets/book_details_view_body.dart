import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/book_details_appbar.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/book_rating_overview.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const BookDetailsViewAppBar(),
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
          height: 18,
        ),
      ]),
    );
  }
}
