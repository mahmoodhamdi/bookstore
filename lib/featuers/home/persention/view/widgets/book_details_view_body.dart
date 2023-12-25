import 'package:bookstore/featuers/home/persention/view/widgets/book_actions.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/book_details_appbar.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/book_details_section.dart';
import 'package:bookstore/featuers/home/persention/view/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              const BookDetailsViewAppBar(),
              BookDetailsSection(width: width),
              const BookActions(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilerBooksSection()
            ]),
          )
        ],
      ),
    );
  }
}
