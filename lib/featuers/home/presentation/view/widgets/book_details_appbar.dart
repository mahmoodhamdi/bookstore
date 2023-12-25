import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewAppBar extends StatelessWidget {
  const BookDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      IconButton(
        icon: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      )
    ]);
  }
}
