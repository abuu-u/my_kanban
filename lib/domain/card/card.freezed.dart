// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

// ignore: unused_element
  _Card call(
      {@required int id,
      @required String row,
      @required int seqNum,
      @required String text}) {
    return _Card(
      id: id,
      row: row,
      seqNum: seqNum,
      text: text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  int get id;
  String get row;
  int get seqNum;
  String get text;

  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call({int id, String row, int seqNum, String text});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object id = freezed,
    Object row = freezed,
    Object seqNum = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      row: row == freezed ? _value.row : row as String,
      seqNum: seqNum == freezed ? _value.seqNum : seqNum as int,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call({int id, String row, int seqNum, String text});
}

/// @nodoc
class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object id = freezed,
    Object row = freezed,
    Object seqNum = freezed,
    Object text = freezed,
  }) {
    return _then(_Card(
      id: id == freezed ? _value.id : id as int,
      row: row == freezed ? _value.row : row as String,
      seqNum: seqNum == freezed ? _value.seqNum : seqNum as int,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_Card implements _Card {
  const _$_Card(
      {@required this.id,
      @required this.row,
      @required this.seqNum,
      @required this.text})
      : assert(id != null),
        assert(row != null),
        assert(seqNum != null),
        assert(text != null);

  @override
  final int id;
  @override
  final String row;
  @override
  final int seqNum;
  @override
  final String text;

  @override
  String toString() {
    return 'Card(id: $id, row: $row, seqNum: $seqNum, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.seqNum, seqNum) ||
                const DeepCollectionEquality().equals(other.seqNum, seqNum)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(seqNum) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);
}

abstract class _Card implements Card {
  const factory _Card(
      {@required int id,
      @required String row,
      @required int seqNum,
      @required String text}) = _$_Card;

  @override
  int get id;
  @override
  String get row;
  @override
  int get seqNum;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith;
}
