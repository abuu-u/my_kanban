import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

const String api = 'https://trello.backend.tests.nekidaem.ru/api/v1';
const Map<String, String> defaultHeaders = {
  HttpHeaders.contentTypeHeader: 'application/json',
};

@lazySingleton
class Api {
  Future<http.Response> post({
    @required String path,
    Map<String, String> headers = defaultHeaders,
    Object body,
  }) async {
    final response = await http.post(
      Uri.parse('$api$path'),
      headers: headers,
      body: json.encode(body),
    );

    return response;
  }

  Future<http.Response> get({
    @required String path,
    Map<String, String> headers = defaultHeaders,
  }) async {
    final response = await http.get(
      Uri.parse('$api$path'),
      headers: headers,
    );

    return response;
  }
}
