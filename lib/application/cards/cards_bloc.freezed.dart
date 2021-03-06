// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CardsEventTearOff {
  const _$CardsEventTearOff();

// ignore: unused_element
  _LoadingStarted loadingStarted() {
    return const _LoadingStarted();
  }

// ignore: unused_element
  _CardsRecived cardsRecived(
      Option<Either<CardFailure, List<Card>>> failureOrCardsOption) {
    return _CardsRecived(
      failureOrCardsOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CardsEvent = _$CardsEventTearOff();

/// @nodoc
mixin _$CardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingStarted(),
    @required
        TResult cardsRecived(
            Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingStarted(),
    TResult cardsRecived(
        Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingStarted(_LoadingStarted value),
    @required TResult cardsRecived(_CardsRecived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingStarted(_LoadingStarted value),
    TResult cardsRecived(_CardsRecived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CardsEventCopyWith<$Res> {
  factory $CardsEventCopyWith(
          CardsEvent value, $Res Function(CardsEvent) then) =
      _$CardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsEventCopyWithImpl<$Res> implements $CardsEventCopyWith<$Res> {
  _$CardsEventCopyWithImpl(this._value, this._then);

  final CardsEvent _value;
  // ignore: unused_field
  final $Res Function(CardsEvent) _then;
}

/// @nodoc
abstract class _$LoadingStartedCopyWith<$Res> {
  factory _$LoadingStartedCopyWith(
          _LoadingStarted value, $Res Function(_LoadingStarted) then) =
      __$LoadingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStartedCopyWithImpl<$Res> extends _$CardsEventCopyWithImpl<$Res>
    implements _$LoadingStartedCopyWith<$Res> {
  __$LoadingStartedCopyWithImpl(
      _LoadingStarted _value, $Res Function(_LoadingStarted) _then)
      : super(_value, (v) => _then(v as _LoadingStarted));

  @override
  _LoadingStarted get _value => super._value as _LoadingStarted;
}

/// @nodoc
class _$_LoadingStarted implements _LoadingStarted {
  const _$_LoadingStarted();

  @override
  String toString() {
    return 'CardsEvent.loadingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingStarted(),
    @required
        TResult cardsRecived(
            Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
  }) {
    assert(loadingStarted != null);
    assert(cardsRecived != null);
    return loadingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingStarted(),
    TResult cardsRecived(
        Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingStarted != null) {
      return loadingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingStarted(_LoadingStarted value),
    @required TResult cardsRecived(_CardsRecived value),
  }) {
    assert(loadingStarted != null);
    assert(cardsRecived != null);
    return loadingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingStarted(_LoadingStarted value),
    TResult cardsRecived(_CardsRecived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingStarted != null) {
      return loadingStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadingStarted implements CardsEvent {
  const factory _LoadingStarted() = _$_LoadingStarted;
}

/// @nodoc
abstract class _$CardsRecivedCopyWith<$Res> {
  factory _$CardsRecivedCopyWith(
          _CardsRecived value, $Res Function(_CardsRecived) then) =
      __$CardsRecivedCopyWithImpl<$Res>;
  $Res call({Option<Either<CardFailure, List<Card>>> failureOrCardsOption});
}

/// @nodoc
class __$CardsRecivedCopyWithImpl<$Res> extends _$CardsEventCopyWithImpl<$Res>
    implements _$CardsRecivedCopyWith<$Res> {
  __$CardsRecivedCopyWithImpl(
      _CardsRecived _value, $Res Function(_CardsRecived) _then)
      : super(_value, (v) => _then(v as _CardsRecived));

  @override
  _CardsRecived get _value => super._value as _CardsRecived;

  @override
  $Res call({
    Object failureOrCardsOption = freezed,
  }) {
    return _then(_CardsRecived(
      failureOrCardsOption == freezed
          ? _value.failureOrCardsOption
          : failureOrCardsOption as Option<Either<CardFailure, List<Card>>>,
    ));
  }
}

/// @nodoc
class _$_CardsRecived implements _CardsRecived {
  const _$_CardsRecived(this.failureOrCardsOption)
      : assert(failureOrCardsOption != null);

  @override
  final Option<Either<CardFailure, List<Card>>> failureOrCardsOption;

  @override
  String toString() {
    return 'CardsEvent.cardsRecived(failureOrCardsOption: $failureOrCardsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardsRecived &&
            (identical(other.failureOrCardsOption, failureOrCardsOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCardsOption, failureOrCardsOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCardsOption);

  @JsonKey(ignore: true)
  @override
  _$CardsRecivedCopyWith<_CardsRecived> get copyWith =>
      __$CardsRecivedCopyWithImpl<_CardsRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingStarted(),
    @required
        TResult cardsRecived(
            Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
  }) {
    assert(loadingStarted != null);
    assert(cardsRecived != null);
    return cardsRecived(failureOrCardsOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingStarted(),
    TResult cardsRecived(
        Option<Either<CardFailure, List<Card>>> failureOrCardsOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardsRecived != null) {
      return cardsRecived(failureOrCardsOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingStarted(_LoadingStarted value),
    @required TResult cardsRecived(_CardsRecived value),
  }) {
    assert(loadingStarted != null);
    assert(cardsRecived != null);
    return cardsRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingStarted(_LoadingStarted value),
    TResult cardsRecived(_CardsRecived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardsRecived != null) {
      return cardsRecived(this);
    }
    return orElse();
  }
}

abstract class _CardsRecived implements CardsEvent {
  const factory _CardsRecived(
          Option<Either<CardFailure, List<Card>>> failureOrCardsOption) =
      _$_CardsRecived;

  Option<Either<CardFailure, List<Card>>> get failureOrCardsOption;
  @JsonKey(ignore: true)
  _$CardsRecivedCopyWith<_CardsRecived> get copyWith;
}

/// @nodoc
class _$CardsStateTearOff {
  const _$CardsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(Option<List<Card>> cardsOption) {
    return _LoadSuccess(
      cardsOption,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(CardFailure cardFailure) {
    return _LoadFailure(
      cardFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CardsState = _$CardsStateTearOff();

/// @nodoc
mixin _$CardsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Option<List<Card>> cardsOption),
    @required TResult loadFailure(CardFailure cardFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Option<List<Card>> cardsOption),
    TResult loadFailure(CardFailure cardFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res> implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  final CardsState _value;
  // ignore: unused_field
  final $Res Function(CardsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CardsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Option<List<Card>> cardsOption),
    @required TResult loadFailure(CardFailure cardFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Option<List<Card>> cardsOption),
    TResult loadFailure(CardFailure cardFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CardsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CardsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Option<List<Card>> cardsOption),
    @required TResult loadFailure(CardFailure cardFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Option<List<Card>> cardsOption),
    TResult loadFailure(CardFailure cardFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CardsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Option<List<Card>> cardsOption});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object cardsOption = freezed,
  }) {
    return _then(_LoadSuccess(
      cardsOption == freezed
          ? _value.cardsOption
          : cardsOption as Option<List<Card>>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.cardsOption) : assert(cardsOption != null);

  @override
  final Option<List<Card>> cardsOption;

  @override
  String toString() {
    return 'CardsState.loadSuccess(cardsOption: $cardsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.cardsOption, cardsOption) ||
                const DeepCollectionEquality()
                    .equals(other.cardsOption, cardsOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardsOption);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Option<List<Card>> cardsOption),
    @required TResult loadFailure(CardFailure cardFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(cardsOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Option<List<Card>> cardsOption),
    TResult loadFailure(CardFailure cardFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(cardsOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CardsState {
  const factory _LoadSuccess(Option<List<Card>> cardsOption) = _$_LoadSuccess;

  Option<List<Card>> get cardsOption;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CardFailure cardFailure});

  $CardFailureCopyWith<$Res> get cardFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object cardFailure = freezed,
  }) {
    return _then(_LoadFailure(
      cardFailure == freezed ? _value.cardFailure : cardFailure as CardFailure,
    ));
  }

  @override
  $CardFailureCopyWith<$Res> get cardFailure {
    if (_value.cardFailure == null) {
      return null;
    }
    return $CardFailureCopyWith<$Res>(_value.cardFailure, (value) {
      return _then(_value.copyWith(cardFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.cardFailure) : assert(cardFailure != null);

  @override
  final CardFailure cardFailure;

  @override
  String toString() {
    return 'CardsState.loadFailure(cardFailure: $cardFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.cardFailure, cardFailure) ||
                const DeepCollectionEquality()
                    .equals(other.cardFailure, cardFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(Option<List<Card>> cardsOption),
    @required TResult loadFailure(CardFailure cardFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(cardFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(Option<List<Card>> cardsOption),
    TResult loadFailure(CardFailure cardFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(cardFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CardsState {
  const factory _LoadFailure(CardFailure cardFailure) = _$_LoadFailure;

  CardFailure get cardFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
