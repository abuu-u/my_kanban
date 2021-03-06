import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_kanban/domain/auth/i_auth_repository.dart';
import 'package:my_kanban/domain/card/card.dart';
import 'package:my_kanban/domain/card/card_failure.dart';
import 'package:my_kanban/domain/card/i_card_repository.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

@injectable
class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final ICardRepository _cardRepository;
  final IAuthRepository _authRepository;

  CardsBloc(
    this._cardRepository,
    this._authRepository,
  ) : super(const CardsState.initial());

  @override
  Stream<CardsState> mapEventToState(
    CardsEvent event,
  ) async* {
    yield* event.map(
      loadingStarted: (e) async* {
        yield const CardsState.loadInProgress();

        final token = await _authRepository
            .getToken()
            .then((value) => value.getOrElse(() => null));

        _cardRepository.getCards(token).then((failureOrCardsOption) =>
            add(CardsEvent.cardsRecived(failureOrCardsOption)));
      },
      cardsRecived: (e) async* {
        yield e.failureOrCardsOption.fold(
          () => CardsState.loadSuccess(none()),
          (failureOrCards) => failureOrCards.fold(
            (f) => CardsState.loadFailure(f),
            (cards) => CardsState.loadSuccess(some(cards)),
          ),
        );
      },
    );
  }
}
