import 'package:bookly/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  final BookModel book;
  const BookDetailsImage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 243,
          child: AspectRatio(
            aspectRatio: 162 / 243,
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
    );
  }
}
