import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(right: 24, left: 24, top: 40),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: CustomBookImage(),
                ),
                const SizedBox(height: 24),
                Text('The Jungle Book', style: Styles.textStyle32),
                Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 8),
                BookRating(),
                const SizedBox(height: 24),
                BooksAction(),
                Expanded(child: const SizedBox(height: 32)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like', style: Styles.textStyle20),
                ),
                const SizedBox(height: 16),
                FeaturedListView(size: 0.17),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
