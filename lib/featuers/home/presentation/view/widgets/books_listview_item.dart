import 'package:bookstore/contants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/book_rating_overview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListviewItem extends StatelessWidget {
  const BooksListviewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(imageUrl: imageUrl)),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    "J.K Rowling",
                    style: TextStyles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 \$",
                        style: TextStyles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const BookRatingOverview(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
