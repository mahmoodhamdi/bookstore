import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/best_seller_listview.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/featuers_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Best Seller",
                  style: TextStyles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListview(),
          ),
        ),
      ],
    );
  }
}
