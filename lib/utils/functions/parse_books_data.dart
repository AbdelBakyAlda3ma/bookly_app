import 'package:dio/dio.dart';
import '../../models/book_model.dart';

List<BookModel> parseData(Response<dynamic> response) {
  List<BookModel> books = [];
  var items = response.data['items'];
  for (var bookMap in items) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
