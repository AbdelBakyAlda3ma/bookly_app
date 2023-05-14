import 'package:bookly/features/home/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

import '../../../../models/book_model.dart';

class BestSellerListView extends StatelessWidget {
  final List<BookModel> books;

  const BestSellerListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BestSellerItem(
            book: books[index],
          );
        },
      ),
    );
  }
}
