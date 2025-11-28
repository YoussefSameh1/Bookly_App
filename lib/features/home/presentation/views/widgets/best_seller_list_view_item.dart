import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16),
          width: MediaQuery.of(context).size.width * 0.22,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20.copyWith(fontFamily: kSectraFont),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text('J.K. Rowling', style: Styles.textStyle16),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text('19.99 €', style: Styles.textStyle20),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.yellow, size: 24),
                  const SizedBox(width: 4),
                  // Text(
                  //   '4.8',
                  //   style: Styles.textStyle16.copyWith(
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // const SizedBox(width: 4),
                  // Text('(2390)', style: Styles.textStyle16),
                  Text.rich(
                    TextSpan(
                      text: '4.8 ',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(text: '(2390)', style: Styles.textStyle16),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
