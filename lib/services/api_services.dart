import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class LoginAPI {
  Future<void> loginUser(String email, String password);
}

class APIService implements LoginAPI {
  Future<void> loginUser(String email, String password) async {
    final url = Uri.parse('https://api.dev.healthtechgate.com/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
    } else {}
  }
}
