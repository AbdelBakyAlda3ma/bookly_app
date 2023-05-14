import 'package:bookly/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';

class RecomendedBooksItem extends StatelessWidget {
  final BookModel book;
  const RecomendedBooksItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 112,
            child: AspectRatio(
              aspectRatio: 70 / 112,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                },
                imageUrl: book.image ?? '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
