import 'package:bookly/features/home/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../utils/book_api_service.dart';

class BestSellerFutureBuilder extends StatelessWidget {
  const BestSellerFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BestSellerListView(
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
