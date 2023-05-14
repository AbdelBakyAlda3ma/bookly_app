import 'package:bookly/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  final BookModel book;
  const BestSellerImage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: 140,
          child: AspectRatio(
            aspectRatio: 70 / 105,
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
