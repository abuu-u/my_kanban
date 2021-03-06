import 'package:dartz/dartz.dart';

import 'card.dart';
import 'card_failure.dart';

abstract class ICardRepository {
  Future<Option<Either<CardFailure, List<Card>>>> getCards(String token);
  Future<void> deleteCachedCards();
}
