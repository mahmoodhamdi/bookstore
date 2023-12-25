 import 'package:bookstore/featuers/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal, 
        itemBuilder: (BuildContext context, int index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
