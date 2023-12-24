import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/best_seller_listview_item.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/custom_appbar.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/featuers_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: TextStyles.textStyle18,
          ),
          BestSellerListviewItem(),
        ],
      ),
    );
  } 
}
