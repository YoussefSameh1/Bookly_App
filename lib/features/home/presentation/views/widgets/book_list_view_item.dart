import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: Row(
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
                    BookRating()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
