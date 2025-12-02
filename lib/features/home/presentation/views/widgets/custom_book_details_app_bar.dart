import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.close, size: 32),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const Spacer(),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, size: 32),
          onPressed: () {},
        ),
      ],
    );
  }
}
