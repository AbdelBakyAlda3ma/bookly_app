import 'package:dio/dio.dart';

import '../models/book_model.dart';
import 'functions/parse_books_data.dart';

abstract class BooksApiService {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';
  static Future<List<BookModel>> fetchFeaturedBooks() async {
    final dio = Dio();
    try {
      var response = await dio.get('$_baseUrl/volumes?q=programming');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      throw Exception('Something Went Wrong');
    }
  }
}
