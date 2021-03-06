// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardDto _$_$_CardDtoFromJson(Map<String, dynamic> json) {
  return _$_CardDto(
    id: json['id'] as int,
    row: json['row'] as String,
    seqNum: json['seq_num'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$_$_CardDtoToJson(_$_CardDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'seq_num': instance.seqNum,
      'text': instance.text,
    };
