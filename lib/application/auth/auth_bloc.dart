import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_kanban/domain/auth/i_auth_repository.dart';
import 'package:my_kanban/domain/card/i_card_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ICardRepository _cardRepository;
  final IAuthRepository _authRepository;

  AuthBloc(
    this._cardRepository,
    this._authRepository,
  ) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authRepository.getToken();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authRepository.signOut();
        await _cardRepository.deleteCachedCards();

        yield const AuthState.unauthenticated();
      },
    );
  }
}
