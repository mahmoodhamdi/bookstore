import 'package:bookstore/featuers/home/persention/view/widgets/custom_appbar.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/featuers_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(child: FeaturedBooksListView()),
      ],
    );
  }
}
