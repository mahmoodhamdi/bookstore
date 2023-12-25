import 'package:bookstore/featuers/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerListviewItem(),
        );
      },
    );
  }
}
