import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/similer_books_listview.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: TextStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
