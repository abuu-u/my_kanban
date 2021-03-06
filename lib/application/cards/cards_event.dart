part of 'cards_bloc.dart';

@freezed
abstract class CardsEvent with _$CardsEvent {
  const factory CardsEvent.loadingStarted() = _LoadingStarted;
  const factory CardsEvent.cardsRecived(
    Option<Either<CardFailure, List<Card>>> failureOrCardsOption,
  ) = _CardsRecived;
}
