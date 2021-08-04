import 'dart:convert';

import 'package:app_test/pages/home/models/user.dart';
import 'package:http/http.dart' as http;

const URL_API = 'https://jsonplaceholder.typicode.com/users';

class HomeRepository {
  Future<List<UserModel>> getData() async {
    final response = await http.get(URL_API);

    if (response.statusCode == 200) {
      final dataDecode = json.decode(response.body);
      List<UserModel> users =
          (dataDecode as List).map((x) => UserModel.fromJson(x)).toList();
      return users;
    }

    return [];
  }
}
