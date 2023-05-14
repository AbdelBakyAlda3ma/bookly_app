import 'package:flutter/material.dart';
import '../../../../utils/book_api_service.dart';
import 'featured_books_list_view.dart';

class FeaturedFutureBuilder extends StatelessWidget {
  const FeaturedFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return FeaturedBooksListView(
              books: snapshot.data!,
            );
          } else {
            return const SizedBox(
              height: 189,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        } else {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
