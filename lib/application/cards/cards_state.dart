part of 'cards_bloc.dart';

@freezed
abstract class CardsState with _$CardsState {
  const factory CardsState.initial() = _Initial;
  const factory CardsState.loadInProgress() = _LoadInProgress;
  const factory CardsState.loadSuccess(Option<List<Card>> cardsOption) =
      _LoadSuccess;
  const factory CardsState.loadFailure(CardFailure cardFailure) = _LoadFailure;
}
