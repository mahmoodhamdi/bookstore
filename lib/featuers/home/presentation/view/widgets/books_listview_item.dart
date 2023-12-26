import 'package:bookstore/contants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/data/repos/models/book_model/book_model.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/book_rating_overview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListviewItem extends StatelessWidget {
  const BooksListviewItem(
      {super.key, required this.imageUrl, required this.bookModel});
  final String imageUrl;
  final BookModel bookModel;
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
                      bookModel.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? "",
                    style: TextStyles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: TextStyles.textStyle20
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                      BookRatingOverview(
                        count: bookModel.volumeInfo.ratingsCount??0,
                        rating: bookModel.volumeInfo.averageRating??0,
                      ),
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
