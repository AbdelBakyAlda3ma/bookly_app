import 'package:bookly/models/book_model.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class BookRating extends StatelessWidget {
  final BookModel book;
  const BookRating({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return book.rating == null
        ? const SizedBox()
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              const SizedBox(
                width: 6.3,
              ),
              Text(
                book.rating.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '(${book.ratingCount})',
                style: Styles.textStyle14
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              )
            ],
          );
  }
}
