import 'package:bookstore/core/utils/text_styles.dart';
import 'package:bookstore/featuers/search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookstore/featuers/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Results",
            style: TextStyles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultsListview())
        ],
      ),
    );
  }
}
