// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  TooShort<T> tooShort<T>({@required T failedValue, @required int minLength}) {
    return TooShort<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;
  int get minLength;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tooShort(T failedValue, int minLength),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tooShort(T failedValue, int minLength),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tooShort(TooShort<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tooShort(TooShort<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
    Object minLength = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      minLength: minLength == freezed ? _value.minLength : minLength as int,
    ));
  }
}

/// @nodoc
abstract class $TooShortCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $TooShortCopyWith(
          TooShort<T> value, $Res Function(TooShort<T>) then) =
      _$TooShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$TooShortCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $TooShortCopyWith<T, $Res> {
  _$TooShortCopyWithImpl(TooShort<T> _value, $Res Function(TooShort<T>) _then)
      : super(_value, (v) => _then(v as TooShort<T>));

  @override
  TooShort<T> get _value => super._value as TooShort<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object minLength = freezed,
  }) {
    return _then(TooShort<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      minLength: minLength == freezed ? _value.minLength : minLength as int,
    ));
  }
}

/// @nodoc
class _$TooShort<T> implements TooShort<T> {
  const _$TooShort({@required this.failedValue, @required this.minLength})
      : assert(failedValue != null),
        assert(minLength != null);

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.tooShort(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooShort<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.minLength, minLength) ||
                const DeepCollectionEquality()
                    .equals(other.minLength, minLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(minLength);

  @JsonKey(ignore: true)
  @override
  $TooShortCopyWith<T, TooShort<T>> get copyWith =>
      _$TooShortCopyWithImpl<T, TooShort<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tooShort(T failedValue, int minLength),
  }) {
    assert(tooShort != null);
    return tooShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tooShort(T failedValue, int minLength),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tooShort != null) {
      return tooShort(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tooShort(TooShort<T> value),
  }) {
    assert(tooShort != null);
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tooShort(TooShort<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort<T> implements ValueFailure<T> {
  const factory TooShort({@required T failedValue, @required int minLength}) =
      _$TooShort<T>;

  @override
  T get failedValue;
  @override
  int get minLength;
  @override
  @JsonKey(ignore: true)
  $TooShortCopyWith<T, TooShort<T>> get copyWith;
}
