import 'package:auto_size_text/auto_size_text.dart';
import 'package:bookly/features/book_details/views/widgets/recomended_books_future_builder.dart';
import 'package:bookly/models/book_model.dart';
import 'package:bookly/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_detail_image.dart';
import 'book_details_preview_button.dart';
import '../../../../utils/widgets/book_rating.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book;
  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BookDetailsImage(book: book),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 37,
            child: AutoSizeText(
              book.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Styles.textStyle30,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            book.author!,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          BookRating(book: book),
          const SizedBox(
            height: 28,
          ),
          const BookDetailsPreviewButton(),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Expanded(
            child: RecomendedBooksFutureBuilder(),
          ),
        ],
      ),
    );
  }
}
