import 'package:bookly/features/book_details/views/widgets/recomended_books_item.dart';
import 'package:bookly/models/book_model.dart';
import 'package:flutter/material.dart';

class RecomendedBooksListView extends StatelessWidget {
  final List<BookModel> booksList;
  const RecomendedBooksListView({super.key, required this.booksList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: booksList.length,
      itemBuilder: (context, index) {
        return RecomendedBooksItem(book: booksList[index]);
      },
    );
  }
}
