import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_kanban/domain/card/card.dart';
import 'package:my_kanban/domain/card/card_failure.dart';
import 'package:my_kanban/domain/card/i_card_repository.dart';
import 'package:my_kanban/infrastructure/card/card_local_data_source.dart';
import 'package:my_kanban/infrastructure/card/card_remote_data_source.dart';
import 'package:my_kanban/infrastructure/core/network_info.dart';

@LazySingleton(as: ICardRepository)
class CardRepository implements ICardRepository {
  final CardRemoteDataSource _cardRemoteDataSource;
  final CardLocalDataSource _cardLocalDataSource;
  final NetworkInfo _networkInfo;

  CardRepository(
    this._cardRemoteDataSource,
    this._networkInfo,
    this._cardLocalDataSource,
  );

  @override
  Future<Option<Either<CardFailure, List<Card>>>> getCards(String token) async {
    if (await _networkInfo.isConnected()) {
      try {
        final cards = await _cardRemoteDataSource.getCards(token);
        await _cardLocalDataSource.cacheCards(cards);

        return some(right(cards.map((card) => card.toDomain()).toList()));
      } on Exception {
        return some(left(const CardFailure.serverError()));
      }
    } else {
      try {
        return some(right(_cardLocalDataSource
            .getCachedCards()
            .map((card) => card.toDomain())
            .toList()));
      } on Exception {
        return none();
      }
    }
  }

  @override
  Future<void> deleteCachedCards() async {
    await _cardLocalDataSource.deleteCachedCards();
  }
}
