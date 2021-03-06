import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_kanban/domain/card/card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto with _$CardDto {
  const factory CardDto({
    @required int id,
    @required String row,
    @required int seqNum,
    @required String text,
  }) = _CardDto;

  const CardDto._();

  Card toDomain() => Card(
        id: id,
        row: row,
        seqNum: seqNum,
        text: text,
      );

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);
}
