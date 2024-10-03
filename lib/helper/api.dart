import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, String? tokin}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with statuscode ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String url,
    dynamic body,
    String? tokin,
  }) async {
    Map<String, String> headers = {};
    if (tokin != null) {
      headers.addAll({
        'Authorization': 'Bearer $tokin',
      });
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with bpdy ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put({
    required String url,
    dynamic body,
    String? tokin,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (tokin != null) {
      headers.addAll({
        'Authorization': 'Bearer $tokin',
      });
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with bpdy ${jsonDecode(response.body)}');
    }
  }
}
