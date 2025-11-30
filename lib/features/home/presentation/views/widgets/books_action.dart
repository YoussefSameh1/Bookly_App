import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
                text: '19.99 €',
                background: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
              ),
          ),
          Expanded(
            child: CustomButton(
                text: 'Free Preview',
                background: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
              ),
          ),
        ],
      ),
    );
  }
}