import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_shop/api/api_error.dart';

class Api {
  // ignore: constant_identifier_names
  static const ENDPOINT = '';
  final Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Future<dynamic> get(String method, {Map<String, dynamic>? params}) async {
    Uri url = Uri.https(ENDPOINT, method, params);
    http.Response response = await http.get(url, headers: _headers);
    Map<String, dynamic> content = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw ApiError(response.statusCode, content.toString());
    }
    return content;
  }

  Future<dynamic> post(String method, {Map<String, dynamic>? params}) async {
    Uri url = Uri.https(ENDPOINT, method);
    http.Response response =
        await http.post(url, body: params, headers: _headers);
    Map<String, dynamic> content = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw ApiError(response.statusCode, content.toString());
    }
    return content;
  }

  Future<dynamic> put(String method, {Map<String, dynamic>? params}) async {
    Uri url = Uri.https(ENDPOINT, method, params);
    http.Response response = await http.put(url, headers: _headers);
    Map<String, dynamic> content = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw ApiError(response.statusCode, content.toString());
    }
    return content;
  }

  Future<dynamic> delete(String method, {Map<String, dynamic>? params}) async {
    Uri url = Uri.https(ENDPOINT, method, params);
    http.Response response = await http.delete(url, headers: _headers);
    Map<String, dynamic> content = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw ApiError(response.statusCode, content.toString());
    }
    return content;
  }
}
