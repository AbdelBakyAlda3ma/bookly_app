import 'package:bookly/features/home/views/widgets/best_seller_image.dart';
import 'package:bookly/models/book_model.dart';
import 'package:bookly/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../utils/widgets/book_rating.dart';
import '../../../book_details/views/book_details_view.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel book;
  const BestSellerItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 30,
        right: 48,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contex) {
                return BookDetailsView(book: book);
              },
            ),
          );
        },
        child: Row(
          children: [
            BestSellerImage(book: book),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 193,
                    child: Text(
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: Styles.textStyle20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      book.author!,
                      style: Styles.textStyle14
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '19.99\$',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(book: book),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
