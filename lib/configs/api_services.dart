import 'package:elibmobile/configs/services.dart';
import 'package:elibmobile/models/categories.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<List<Categories>?> fetchCategories() async {
    final response = await http.get(Uri.parse(listCategories));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Categories> categories =
          body.map((dynamic item) => Categories.fromJson(item)).toList();
      return categories;
    } else {
      throw "Failed to load cases list";
    }
  }
}
