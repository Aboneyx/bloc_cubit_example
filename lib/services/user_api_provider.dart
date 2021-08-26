import 'dart:convert';

import 'package:bloc_cubit_example/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  // http://jsonplaceholder.typicode.com/users

  Future<List<User>> getUser() async {
    final response = await http.get(Uri.parse('http://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body) as List<dynamic>;
      return userJson.map((json) => User.fromJson(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Error fetching users');
    }
  }
}