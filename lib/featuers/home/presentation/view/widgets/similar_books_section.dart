import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';


class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: TextStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}
