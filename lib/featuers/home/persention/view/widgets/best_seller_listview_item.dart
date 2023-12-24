import 'package:bookstore/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
