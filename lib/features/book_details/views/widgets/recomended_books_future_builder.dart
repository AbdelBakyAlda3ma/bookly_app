import 'package:bookly/features/book_details/views/widgets/recomended_books_list_view.dart';
import 'package:bookly/utils/book_api_service.dart';
import 'package:flutter/material.dart';

class RecomendedBooksFutureBuilder extends StatelessWidget {
  const RecomendedBooksFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RecomendedBooksListView(booksList: snapshot.data!);
        } else {
          return const Center(
            child: SizedBox(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
