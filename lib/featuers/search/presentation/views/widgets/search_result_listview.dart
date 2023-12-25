import 'package:bookstore/featuers/home/presentation/view/widgets/books_listview_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListview extends StatelessWidget {
  const SearchResultsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BooksListviewItem(),
        );
      },
    );
  }
}
