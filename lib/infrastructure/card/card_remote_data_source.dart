import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:my_kanban/infrastructure/card/card_dto.dart';
import 'package:my_kanban/infrastructure/core/api.dart';
import 'package:my_kanban/infrastructure/core/exceptions.dart';

const String cards = '/cards';

const int successCode = 200;

@lazySingleton
class CardRemoteDataSource {
  final Api _api;

  CardRemoteDataSource(this._api);

  Future<List<CardDto>> getCards(String token) async {
    final response = await _api.get(
      path: cards,
      headers: {
        ...defaultHeaders,
        HttpHeaders.authorizationHeader: 'JWT $token',
      },
    );

    if (response.statusCode == successCode) {
      return (json.decode(utf8.decode(response.bodyBytes)) as List)
          .map((json) => CardDto.fromJson(json as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
