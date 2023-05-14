import 'package:bookly/features/book_details/views/widgets/book_datails_body.dart';
import 'package:bookly/features/book_details/views/widgets/book_details_app_bar.dart';
import 'package:bookly/models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  static const String id = 'BookDetailsView';
  final BookModel book;
  const BookDetailsView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailsViewAppBar(),
      body: BookDetailsViewBody(book: book),
    );
  }
}
