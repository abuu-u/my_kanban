// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardDto _$CardDtoFromJson(Map<String, dynamic> json) {
  return _CardDto.fromJson(json);
}

/// @nodoc
class _$CardDtoTearOff {
  const _$CardDtoTearOff();

// ignore: unused_element
  _CardDto call(
      {@required int id,
      @required String row,
      @required int seqNum,
      @required String text}) {
    return _CardDto(
      id: id,
      row: row,
      seqNum: seqNum,
      text: text,
    );
  }

// ignore: unused_element
  CardDto fromJson(Map<String, Object> json) {
    return CardDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardDto = _$CardDtoTearOff();

/// @nodoc
mixin _$CardDto {
  int get id;
  String get row;
  int get seqNum;
  String get text;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardDtoCopyWith<CardDto> get copyWith;
}

/// @nodoc
abstract class $CardDtoCopyWith<$Res> {
  factory $CardDtoCopyWith(CardDto value, $Res Function(CardDto) then) =
      _$CardDtoCopyWithImpl<$Res>;
  $Res call({int id, String row, int seqNum, String text});
}

/// @nodoc
class _$CardDtoCopyWithImpl<$Res> implements $CardDtoCopyWith<$Res> {
  _$CardDtoCopyWithImpl(this._value, this._then);

  final CardDto _value;
  // ignore: unused_field
  final $Res Function(CardDto) _then;

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
abstract class _$CardDtoCopyWith<$Res> implements $CardDtoCopyWith<$Res> {
  factory _$CardDtoCopyWith(_CardDto value, $Res Function(_CardDto) then) =
      __$CardDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String row, int seqNum, String text});
}

/// @nodoc
class __$CardDtoCopyWithImpl<$Res> extends _$CardDtoCopyWithImpl<$Res>
    implements _$CardDtoCopyWith<$Res> {
  __$CardDtoCopyWithImpl(_CardDto _value, $Res Function(_CardDto) _then)
      : super(_value, (v) => _then(v as _CardDto));

  @override
  _CardDto get _value => super._value as _CardDto;

  @override
  $Res call({
    Object id = freezed,
    Object row = freezed,
    Object seqNum = freezed,
    Object text = freezed,
  }) {
    return _then(_CardDto(
      id: id == freezed ? _value.id : id as int,
      row: row == freezed ? _value.row : row as String,
      seqNum: seqNum == freezed ? _value.seqNum : seqNum as int,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardDto extends _CardDto {
  const _$_CardDto(
      {@required this.id,
      @required this.row,
      @required this.seqNum,
      @required this.text})
      : assert(id != null),
        assert(row != null),
        assert(seqNum != null),
        assert(text != null),
        super._();

  factory _$_CardDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CardDtoFromJson(json);

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
    return 'CardDto(id: $id, row: $row, seqNum: $seqNum, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardDto &&
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
  _$CardDtoCopyWith<_CardDto> get copyWith =>
      __$CardDtoCopyWithImpl<_CardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardDtoToJson(this);
  }
}

abstract class _CardDto extends CardDto {
  const _CardDto._() : super._();
  const factory _CardDto(
      {@required int id,
      @required String row,
      @required int seqNum,
      @required String text}) = _$_CardDto;

  factory _CardDto.fromJson(Map<String, dynamic> json) = _$_CardDto.fromJson;

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
  _$CardDtoCopyWith<_CardDto> get copyWith;
}
