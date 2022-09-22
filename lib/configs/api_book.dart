import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:elibmobile/models/book.dart';

class ApiBook {
  Future<List<BookList>?> fetchCategories() async {
    final response = await http.get(Uri.parse(""));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<BookList> book =
          body.map((dynamic item) => BookList.fromJson(item)).toList();
      return book;
    } else {
      throw "Gagal Memuat ....";
    }
  }
}
