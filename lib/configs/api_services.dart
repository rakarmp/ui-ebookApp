import 'package:elibmobile/configs/services.dart';
import 'package:elibmobile/models/categories.dart';
import 'package:elibmobile/models/peminjaman.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:get_storage/get_storage.dart';

class ApiService {
  static var client = http.Client();
  static final getStorage = GetStorage();
  Future<List<Categories>?> fetchCategories() async {
    final response = await client.get(Uri.parse(listCategories));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Categories> categories =
          body.map((dynamic item) => Categories.fromJson(item)).toList();
      return categories;
    } else {
      throw "Failed to load cases list";
    }
  }

  login(String username, String password) async {
    var response = await client.post(Uri.parse(loginApi),
        body: {'email': username, 'password': password});
    try {
      print('aadsad');
      print(username);
      print(password);
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonResponse = jsonDecode(response.body);
        // print(jsonResponse);

        Map<String, String> listSessionUser = {
          "auth": jsonResponse['response']['access_token'],
          "name": jsonResponse['response']['user']['name'],
          "email": jsonResponse['response']['user']['email']
        };
        getStorage.write('user', listSessionUser);
        //show error message

        return response.statusCode;
      }
    } catch (e) {
      var jsonResponse = jsonDecode(response.body);
      // print(jsonResponse);
      //show error message
      return response.statusCode;
    }
  }
  // Future<Peminjaman> createPeminjaman(
  //     String inputHari, tanggalPeminjaman) async {
  //   final response = await http.post(
  //     Uri.parse('peminjamanApi'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'inputHari': inputHari,
  //       'tanggalPeminjaman': tanggalPeminjaman
  //     }),
  //   );

  //   if (response.statusCode == 201) {
  //     return Peminjaman.fronJson(jsonDecode(response.body));
  //   } else {
  //     throw 'Gagal Mengirim POST';
  //   }
  // }
}
