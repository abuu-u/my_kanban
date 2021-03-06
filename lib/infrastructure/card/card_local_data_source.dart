import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_kanban/infrastructure/card/card_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class CardLocalDataSource {
  final SharedPreferences _sharedPreferences;

  CardLocalDataSource(this._sharedPreferences);

  Future<void> cacheCards(List<CardDto> cards) async {
    await _sharedPreferences.setString(
      'cards',
      json.encode(cards.map((card) => card.toJson()).toList()),
    );
  }

  List<CardDto> getCachedCards() =>
      (json.decode(_sharedPreferences.getString('cards')) as List)
          .map((card) => CardDto.fromJson(card as Map<String, dynamic>))
          .toList();

  Future<void> deleteCachedCards() async {
    await _sharedPreferences.remove('cards');
  }
}
