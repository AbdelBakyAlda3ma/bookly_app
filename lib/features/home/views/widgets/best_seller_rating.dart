import 'package:bookly/models/book_model.dart';
import 'package:bookly/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerRating extends StatelessWidget {
  final BookModel book;
  const BestSellerRating({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return book.rating == null
        ? const Text('')
        : Row(
            children: [
              const Icon(
                Icons.star,
                size: 14,
                color: Colors.yellow,
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 24,
                child: Text(
                  book.rating.toString(),
                  textAlign: TextAlign.center,
                  style: Styles.textStyle16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text('(${book.ratingCount})',
                  style: Styles.textStyle14
                      .copyWith(color: Colors.white.withOpacity(0.5)))
            ],
          );
  }
}
